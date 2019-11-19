package com.tun.Beans;

import java.sql.Date;

public class customer {
	private String username;
	private String password;
	private String fullname;
	private String phone;
	private String email;
	private Date birthday;
	private String address;
	private String role;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public customer(String username, String password, String role) {
		super();
		this.username = username;
		this.password = password;
		this.role = role;
	}
	public customer(String fullname, String phone, String email, Date birthday, String address) {
		super();
		this.fullname = fullname;
		this.phone = phone;
		this.email = email;
		this.birthday = birthday;
		this.address = address;
	}
	public customer() {
		super();
	}
	
}
