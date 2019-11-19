package com.tun.Utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tun.Beans.Cart;
import com.tun.Beans.customer;
import com.tun.Beans.item;
import com.tun.Beans.product;
import com.tun.Beans.product1;

public class electricDAO {
	public static List<product> getAll(Connection conn) {
		List<product> pro = new ArrayList<product>();
		String sql="select  top(5) pr.id_product,pr.name,pr.discription,pri.default_price,pri.promotion_price,i.link \r\n" + 
				"from product pr inner join price pri on pri.id_price=pr.id_price inner join image i on i.id_image=pr.id_image";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				int Id = rs.getInt(1);
				String Name = rs.getString(2);
				String Discription = rs.getString(3);
				float Default_price = rs.getFloat(4);
				float Promotion_price = rs.getFloat(5);
				String Image = rs.getString(6);
				product prod = new product(Id, Name, Discription, Default_price, Promotion_price, Image);
				pro.add(prod);
			}
			rs.close();
			pst.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return pro;
	}
	public static customer userinfo(Connection con, String user) {
		customer cust = null;
		String sql ="select fullname,phone,email,birthday,[address] from customer where username = ?";
		PreparedStatement pst;
		try {
			pst = con.prepareStatement(sql);
			pst.setString(1, user);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				String name = rs.getString(1);
				String phone = rs.getString(2);
				String email = rs.getString(3);
				Date birth = rs.getDate(4);
				String add = rs.getString(5);
				cust = new customer(name, phone, email, birth, add);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return cust;
	}
	public static List<product> cate(Connection con) {
		List<product> pro = new ArrayList<product>();
		String sql = "select name from categories";
		try {
			PreparedStatement pst =con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				String categories = rs.getString(1);
				product prod = new product(categories);
				pro.add(prod);
			}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pro;
	}
	public static List<product1> producer(Connection con) {
		List<product1> pro = new ArrayList<product1>();
		String sql = "select name from producer";
		try {
			PreparedStatement pst =con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				String producer = rs.getString(1);
				product1 prod = new product1(producer);
				pro.add(prod);
			}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pro;
	}
	public static List<product> showcate(Connection con,String name) {
		List<product> pro = new ArrayList<product>();
		String sql = "select pr.id_product,pr.name,pr.discription,pri.default_price,pri.promotion_price,i.link\r\n" + 
				"from product pr inner join price pri on pri.id_price=pr.id_price inner join image i on i.id_image=pr.id_image inner join categories c on pr.id_categories=c.id_categories\r\n" + 
				"where c.name=?";
		try {
			PreparedStatement pst =con.prepareStatement(sql);
			pst.setString(1, name);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				int Id = rs.getInt(1);
				String Name = rs.getString(2);
				String Discription = rs.getString(3);
				float Default_price = rs.getFloat(4);
				float Promotion_price = rs.getFloat(5);
				String Image = rs.getString(6);
				product prod = new product(Id, Name, Discription, Default_price, Promotion_price, Image);
				pro.add(prod);
			}
			rs.close();
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pro;
	}
	public static List<product> allproduct(Connection conn) {
		List<product> pro = new ArrayList<product>();
		String sql="select pr.id_product,pr.name,pr.discription,c.name,a.name,pri.default_price,pri.promotion_price,i.link,pri.date\r\n" + 
				"from product pr inner join price pri on pri.id_price=pr.id_price inner join image i on i.id_image=pr.id_image \r\n" + 
				"inner join categories c on c.id_categories = pr.id_categories inner join producer a on a.id_producer=pr.id_producer";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				int Id = rs.getInt(1);
				String Name = rs.getString(2);
				String Discription = rs.getString(3);
				String Categories  = rs.getString(4);
				String Producer = rs.getString(5);
				float Default_price = rs.getFloat(6);
				float Promotion_price = rs.getFloat(7);
				String Image = rs.getString(8);
				Date da = rs.getDate(9);
				product prod = new product(Id, Name, Discription, Categories, Producer, Default_price, Promotion_price, Image, da);
				pro.add(prod);
			}
			rs.close();
			pst.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return pro;
	}
	public static boolean deleteProduct(Connection conn,int id) {
		String sql = "DELETE FROM product WHERE id_product=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			if(pst.executeUpdate() > 0) return true;
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public static boolean insertFull(Connection conn,product pro) {
			Helper.insertImage(conn, pro.getImage());
			Helper.insertPrice(conn, pro.getDefault_price(), pro.getPromotion_price(), pro.getDate());
			Helper.insertProduct(conn, pro.getName(), pro.getDiscription());
			return true;
	}
	public static boolean updateInsert(Connection conn,product pro) {
		String sql="update product set id_image=?, id_price=?, id_producer=?, id_categories=? where id_product=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, Helper.getidIm(conn));
			pst.setInt(2, Helper.getidPri(conn));
			pst.setInt(3, Helper.getidPro(conn, pro.getProducer()));
			pst.setInt(4, Helper.getidCate(conn, pro.getCategories()));
			pst.setInt(5, Helper.getid(conn));
			if(pst.executeUpdate() > 0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	return false;
	}
	public static product getIdPro(Connection conn,int id) {
		product pro = null;
		String sql = "select p.name,p.discription,c.name,pr.name,pri.default_price,pri.promotion_price,i.link\r\n" + 
				"from product p inner join producer pr on p.id_producer=pr.id_producer inner join image i on i.id_image=p.id_image inner join categories c on c.id_categories=p.id_categories inner join price pri on pri.id_price = p.id_price\r\n" + 
				"where p.id_product=?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				String Name = rs.getString(1);
				String Discription = rs.getString(2);
				String Categories  = rs.getString(3);
				String Producer = rs.getString(4);
				float Default_price = rs.getFloat(5);
				float Promotion_price = rs.getFloat(6);
				String Image = rs.getString(7);
				
				pro = new product(Name, Discription, Categories, Producer, Default_price, Promotion_price, Image);
				System.out.println(pro);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pro;
	}
	public static boolean Update(Connection con, int id,product pro)	{
		Helper.updateCategories(con, Helper.getidCategories(con, id), pro);
		Helper.updateProducer(con, Helper.getidProducer(con, id), pro);
		Helper.updatePrice(con, Helper.getidPrice(con, id), pro);
		Helper.updateImage(con, Helper.getidImage(con, id), pro);
		Helper.updateProduct(con, id, pro);
		return true;
	}
	public static String encrytion(String str) {
		byte[] defaultBytes = str.getBytes();
		try {
			MessageDigest algorithm = MessageDigest.getInstance("MD5");
			algorithm.reset();
			algorithm.update(defaultBytes);
			byte messageDigest[] = algorithm.digest();
			StringBuffer hexString = new StringBuffer();
			for(int i = 0 ;i< messageDigest.length;i++) {
				String hex = Integer.toHexString(0xFF & messageDigest[i]);
				if(hex.length() == 1) {
					hexString.append('0');
				}
				hexString.append(hex);
			}
			str = hexString + "";
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return str;
	}
	public static boolean insertCart(Connection conn, Cart ca) {
		String sql = "insert into [ElectricStore].[dbo].[cart] (username,id_product,quanlity,total_money) values(?,?,?,?)";
		try {
			PreparedStatement pst = conn.prepareStatement("sql");
			for(item item : ca.getItems()) {
				pst.setString(1, ca.getCustomer().getUsername());
				pst.setInt(2, Helper.getIdwithName(conn, item.getPro().getName())); 
				pst.setInt(3, item.getQuantity());
				pst.setFloat(4, ca.getTotal_money());
			}
			if(pst.executeUpdate() > 0) {
				return true;
			}
			pst.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
