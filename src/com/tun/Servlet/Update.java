package com.tun.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tun.Beans.product;
import com.tun.DB.ConnectionDB;
import com.tun.Utils.electricDAO;


@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public Update() {
    	
        super();
    }

    int id = 0;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = ConnectionDB.getConnectionDB();
		try {
			id = Integer.parseInt(request.getParameter("id"));
			product pro = electricDAO.getIdPro(con, id);
			request.setAttribute("product", pro);
			RequestDispatcher rd = request.getRequestDispatcher("/Update.jsp");
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = ConnectionDB.getConnectionDB();	
		String namepro = request.getParameter("name");
		String discription = request.getParameter("discription");
		String categories = request.getParameter("categories");
		String producer = request.getParameter("producer");
		float defaultprice = Float.parseFloat(request.getParameter("defaultprice"));
		float promotionprice = Float.parseFloat(request.getParameter("promotionprice"));
		String image = request.getParameter("image");
		Date date = Date.valueOf(request.getParameter("date"));
		product pro = new product(namepro, discription, categories, producer, defaultprice, promotionprice, image, date);
		electricDAO.Update(conn, id, pro);
		response.sendRedirect(request.getContextPath() + "/ServletCRUD");
	}
}
