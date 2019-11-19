package com.tun.Utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tun.Beans.customer;
import com.tun.DB.ConnectionDB;

public class DataDAO {
	public static customer findUser(String user,String pass) {
		String sql = "select * from [user] where username = ? and password = ?";
		customer cus = null;
		try {
			Connection con = ConnectionDB.getConnectionDB();
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, user);
			pst.setString(2, pass);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				String username = rs.getString(1);
				String password = rs.getString(2);
				String role = rs.getString(3);
				cus = new customer(username, password, role);
			}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cus;
	}
}
