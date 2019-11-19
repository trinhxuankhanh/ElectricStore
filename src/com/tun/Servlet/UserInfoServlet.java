package com.tun.Servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tun.Beans.customer;
import com.tun.DB.ConnectionDB;
import com.tun.Utils.AppUtils;
import com.tun.Utils.electricDAO;
 
@WebServlet("/userInfo")
public class UserInfoServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
 
   public UserInfoServlet() {
      super();
   }
 
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
	   Connection conn = ConnectionDB.getConnectionDB();
	   customer loginedUser = AppUtils.getLoginedUser(request.getSession());
	   customer cus = electricDAO.userinfo(conn, loginedUser.getUsername());
	   request.setAttribute("cus", cus);
	   RequestDispatcher rd = request.getRequestDispatcher("/userInfoView.jsp");
	   rd.forward(request, response);
		
   }
 
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
       
      doGet(request, response);
   }
 
}
