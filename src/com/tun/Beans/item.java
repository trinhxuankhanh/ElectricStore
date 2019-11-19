package com.tun.Beans;

public class item {
	private int id;
	private product pro;
	private int quantity;
	private float price;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public product getPro() {
		return pro;
	}
	public void setPro(product pro) {
		this.pro = pro;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public item() {
		super();
	}
	
}
