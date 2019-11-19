package com.tun.Beans;

import java.sql.Date;

public class product {
	private int id;
	private String name;
	private String discription;
	private boolean action;
	private String categories;
	private String producer;
	private float default_price;
	private float promotion_price;
	private String image;
	private Date date;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDiscription() {
		return discription;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	public boolean isAction() {
		return action;
	}
	public void setAction(boolean action) {
		this.action = action;
	}
	public String getCategories() {
		return categories;
	}
	public void setCategories(String categories) {
		this.categories = categories;
	}
	public String getProducer() {
		return producer;
	}
	public void setProducer(String producer) {
		this.producer = producer;
	}
	public float getDefault_price() {
		return default_price;
	}
	public void setDefault_price(float default_price) {
		this.default_price = default_price;
	}
	public float getPromotion_price() {
		return promotion_price;
	}
	public void setPromotion_price(float promotion_price) {
		this.promotion_price = promotion_price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public product(int id, String name, String discription, float default_price, float promotion_price, String image) {
		super();
		this.id = id;
		this.name = name;
		this.discription = discription;
		this.default_price = default_price;
		this.promotion_price = promotion_price;
		this.image = image;
	}
	
	public product() {
		super();
	}
	public product(String categories) {
		super();
		this.categories = categories;
	}
	public product(int id, String name, String discription, String categories, String producer, float default_price,
			float promotion_price, String image, Date date) {
		super();
		this.id = id;
		this.name = name;
		this.discription = discription;
		this.categories = categories;
		this.producer = producer;
		this.default_price = default_price;
		this.promotion_price = promotion_price;
		this.image = image;
		this.date = date;
	}
	public product(String name, String discription, String categories, String producer, float default_price,
			float promotion_price, String image, Date date) {
		super();
		this.name = name;
		this.discription = discription;
		this.categories = categories;
		this.producer = producer;
		this.default_price = default_price;
		this.promotion_price = promotion_price;
		this.image = image;
		this.date = date;
	}
	public product(int id, String name, String discription, String categories, String producer, float default_price,
			float promotion_price, String image, Date date, int id_cate, int id_pro, int id_image, int id_price) {
		super();
		this.id = id;
		this.name = name;
		this.discription = discription;
		this.categories = categories;
		this.producer = producer;
		this.default_price = default_price;
		this.promotion_price = promotion_price;
		this.image = image;
		this.date = date;
	}
	public product(String name, String discription, String categories, String producer, float default_price,
			float promotion_price, String image) {
		super();
		this.name = name;
		this.discription = discription;
		this.categories = categories;
		this.producer = producer;
		this.default_price = default_price;
		this.promotion_price = promotion_price;
		this.image = image;
	}
	
	
	
}
