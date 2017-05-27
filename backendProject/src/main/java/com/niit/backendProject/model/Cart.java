package com.niit.backendProject.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Cart {
	public Cart(int cartId,int count,double total ){
		
	this.cartId=cartId;
	this.count=count;
	this.total=total;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cartId;
	@OneToOne(cascade=CascadeType.PERSIST,fetch=FetchType.EAGER )
    private User user;
	
	private int count;
	private Double total;
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.EAGER )
	private List<Item> item;
	
}

