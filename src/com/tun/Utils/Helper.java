package com.tun.Utils;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.tun.Beans.product;

public class Helper {
	public static int getid(Connection con ){
		int id = 0;
		String sql="select max(id_product) as id from product";
		try {
			
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
				{
					id = rs.getInt(1);
				}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
	public static int getidIm(Connection con ){
		int id = 0;
		String sql="select max(id_image) as id from image";
		try {
			
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
				{
					id = rs.getInt(1);
				}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
	public static int getidPri(Connection con ){
		int id = 0;
		String sql="select max(id_price) as id from price";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
				{
					id = rs.getInt(1);
				}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
	public static boolean insertPrice(Connection conn, float df, float pro,Date d) {
		String sql="insert into price(default_price,promotion_price,date) values (?,?,?)";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setFloat(1, df);
			pst.setFloat(2, pro);
			pst.setDate(3, d);
			if(pst.executeUpdate() > 0) {
				return true;
			}
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public static boolean insertImage(Connection conn, String image) {
		String sql="insert into image(link) values (?)";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, image);
			if(pst.executeUpdate() > 0)
			{
				return true;
			}
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public static boolean insertProduct(Connection conn,String name,String dis) {
		
		String sql="insert into product(name,discription,action) values (?,?,'true')";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, name);
			pst.setString(2, dis);
			if(pst.executeUpdate() > 0)
			{
				return true;
			}
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public static int getidCate(Connection con,String categories){
		int id = 0;
		String sql="select id_categories from categories where name=?";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, categories);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
				{
					id = rs.getInt(1);
				}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
	public static int getidPro(Connection con,String producer){
		int id = 0;
		String sql="select id_producer from producer where name=?";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, producer);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
				{
					id = rs.getInt(1);
				}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
	public static int getidCategories(Connection con,int id_product){
		int id = 0;
		String sql="select id_categories from product where id_product =?";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setInt(1, id_product);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
				{
					id = rs.getInt(1);
				}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
	public static int getidProducer(Connection con,int id_product){
		int id = 0;
		String sql="select id_product from product where id_product =?";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setInt(1, id_product);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
				{
					id = rs.getInt(1);
				}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
	public static int getidPrice(Connection con,int id_product){
		int id = 0;
		String sql="select id_price from product where id_product =?";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setInt(1, id_product);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
				{
					id = rs.getInt(1);
				}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
	public static int getidImage(Connection con,int id_product){
		int id = 0;
		String sql="select id_image from product where id_product =?";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setInt(1, id_product);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
				{
					id = rs.getInt(1);
				}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
	public static boolean updateCategories(Connection con,int id_cate,product pro) {
		String sql ="update categories set name =? where id_categories=?";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, pro.getCategories());
			pst.setInt(2, id_cate);
			if(pst.executeUpdate() > 0) {
				return true;
			}
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public static boolean updatePrice(Connection con,int id_price,product pro) {
		String sql ="update price set default_price=?,promotion_price=?,date=? where id_price=?";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setFloat(1, pro.getDefault_price());
			pst.setFloat(2, pro.getPromotion_price());
			pst.setDate(3, pro.getDate());
			pst.setInt(4, id_price);
			if(pst.executeUpdate() > 0) {
				return true;
			}
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public static boolean updateImage(Connection con,int id_image,product pro) {
		String sql ="update producer set name =? where id_producer=?";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, pro.getImage());
			pst.setInt(2, id_image);
			if(pst.executeUpdate() > 0) {
				return true;
			}
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public static boolean updateProducer(Connection con,int id_producer,product pro) {
		String sql ="update producer set name =? where id_producer=?";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, pro.getProducer());
			pst.setInt(2, id_producer);
			if(pst.executeUpdate() > 0) {
				return true;
			}
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public static boolean updateProduct(Connection con,int id_product,product pro) {
		String sql ="update product set name=? ,discription=? where id_product=?";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, pro.getName());
			pst.setString(2, pro.getDiscription());
			pst.setInt(3, id_product);
			if(pst.executeUpdate() > 0) {
				return true;
			}
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public static int getIdwithName(Connection con, String name) {
		String sql = "select id_product from product where name = ?";
		int id = 0;
		try {
			PreparedStatement pst = con.prepareStatement("sql");
			pst.setString(1, name);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				id = rs.getInt(1);
			}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
}
