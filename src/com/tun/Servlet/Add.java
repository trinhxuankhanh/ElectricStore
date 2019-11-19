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

@WebServlet("/add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Add() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = ConnectionDB.getConnectionDB();
		try {
			String namepro = request.getParameter("name");
			String discription = request.getParameter("discription");
			String categories = request.getParameter("categories");
			String producer = request.getParameter("producer");
			float defaultprice = Float.parseFloat(request.getParameter("defaultprice"));
			float promotionprice = Float.parseFloat(request.getParameter("promotionprice"));
			String image = request.getParameter("image");
			Date date = Date.valueOf(request.getParameter("date"));
			product pro = new product(namepro, discription, categories, producer, defaultprice, promotionprice, image, date);
			electricDAO.insertFull(con, pro);
			electricDAO.updateInsert(con, pro);
			RequestDispatcher rd = request.getRequestDispatcher("/ServletCRUD");
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
