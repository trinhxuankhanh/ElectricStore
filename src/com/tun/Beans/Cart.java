package com.tun.Beans;

import java.util.List;

public class Cart {
	private int id;
	private customer customer;
	private List<item> items;
	float total_money;
	
	public float getTotal_money() {
		return total_money;
	}
	public void setTotal_money(float total_money) {
		this.total_money = total_money;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public customer getCustomer() {
		return customer;
	}
	public void setCustomer(customer customer) {
		this.customer = customer;
	}
	public List<item> getItems() {
		return items;
	}
	public void setItems(List<item> items) {
		this.items = items;
	}
	public Cart() {
		super();
	}
	
}
