package com.tun.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tun.Beans.product;
import com.tun.Beans.product1;
import com.tun.DB.ConnectionDB;
import com.tun.Utils.electricDAO;

@WebServlet("/Addproduct")
public class showAddproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public showAddproduct() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = ConnectionDB.getConnectionDB();
		try {
			List<product> list = electricDAO.cate(conn);
			List<product1> lis = electricDAO.producer(conn);
			request.setAttribute("list", list);
			request.setAttribute("lis", lis);
			RequestDispatcher rd = request.getRequestDispatcher("Add.jsp");
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
