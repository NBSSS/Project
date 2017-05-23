package com.niit.backendProject.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Table(name="AddtoCart")
@Entity

public class Cart {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int cartId;
	
	@Column(name="user_id")
	private String userId;
	
    @Column(name="product_name")
    private String pname;
    
    private Double price;
    
    private int qty;
    
    private Date date_Added;

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getpName() {
		return pname;
	}

	public void setpName(String pname) {
		this.pname = pname;
	}

	public Date getDate_Added() {
		return date_Added;
	}

	public void setDate_Added(Date date_Added) {
		this.date_Added = date_Added;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

}
