package com.tun.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.tun.Beans.item;
import com.tun.Beans.product;
import com.tun.Beans.Cart;
import com.tun.Beans.customer;
import com.tun.DB.ConnectionDB;
import com.tun.Utils.electricDAO;



@WebServlet("/Cart")
public class shoppingcart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public shoppingcart() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = ConnectionDB.getConnectionDB();
		int quantity = 1 ;
		int id;
		if(request.getParameter("id") != null) {
			id = Integer.parseInt(request.getParameter("id"));
			product pro = electricDAO.getIdPro(conn, id);
			if(pro!=null) {
				if(request.getParameter("quantity")!=null) {
					quantity = Integer.parseInt(request.getParameter("quantity"));
				}
				HttpSession session = request.getSession();
				if(session.getAttribute("order")==null) {
					Cart ca = new Cart();
					List<item> listItems = new ArrayList<item>();
					item item = new item();
					item.setPro(pro);
					item.setQuantity(quantity);
					item.setPrice(pro.getPromotion_price());
					listItems.add(item);
					ca.setItems(listItems);
					float total = item.getPrice()*item.getQuantity();
					ca.setTotal_money(total);
					customer a =  (customer) request.getSession().getAttribute("loginedUser");
					ca.setCustomer(a);
					session.setAttribute("order", ca);
				}
				else {
					Cart ca = (Cart) session.getAttribute("order");
					List<item> listItems = ca.getItems();
					boolean check = false;
					for(item item : listItems){
						
						if(item.getPro().getName().equals(pro.getName()) == true ) {
							item.setQuantity(item.getQuantity()+quantity);
							check = true;
						}
					}
					if(check==false) {
						item item1 = new item();
						item1.setPro(pro);
						item1.setQuantity(quantity);
						item1.setPrice(pro.getPromotion_price());
						listItems.add(item1);
					}
					float total = 0.0f;
					for(item item : listItems) {
						total += item.getPrice()*item.getQuantity();
					}
					ca.setTotal_money(total);
					customer a =  (customer) request.getSession().getAttribute("loginedUser");
					ca.setCustomer(a);
					session.setAttribute("order", ca);
					
				}
			}
			response.sendRedirect(request.getContextPath()+"/showcart");
		}
		else {
			response.sendRedirect(request.getContextPath()+"/showcart");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("loginedUser") == null) {
			response.sendRedirect(request.getContextPath() + "/login");;
		}
		else if(session.getAttribute("order")!=null) {
			Connection con =  ConnectionDB.getConnectionDB();
			Cart ca = (Cart) request.getSession().getAttribute("order");
			electricDAO.insertCart(con, ca);
			response.sendRedirect(request.getContextPath()+"/HomeServlet");
		}
	}

}
