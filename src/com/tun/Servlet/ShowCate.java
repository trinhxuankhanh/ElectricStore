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
import com.tun.DB.ConnectionDB;
import com.tun.Utils.electricDAO;

@WebServlet("/ShowCate")
public class ShowCate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ShowCate() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = ConnectionDB.getConnectionDB();
		String name = request.getParameter("name");
		try {
			List<product> pro = electricDAO.showcate(conn, name);
			List<product> lis = electricDAO.cate(conn);
			request.setAttribute("list", pro);
			request.setAttribute("lis", lis);
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
