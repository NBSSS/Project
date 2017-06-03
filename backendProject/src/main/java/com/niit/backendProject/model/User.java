package com.niit.backendProject.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class User 
{
	@Id
	@Column
	private String userId;
	
	@Column(unique = true)
	private String username;
	
	@Column
	private String password;
	private boolean active;

	@OneToOne
	@JoinColumn(name = "customerId")
	private Customer customer;
	
	 
	
	private String email;
	

	public String getEmail() {
		return email;
	}

	public void setwEmail(String email) {
		this.email = email;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

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

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	
		/*@Id
	private String userId;
	@Column(unique=true)
	private String username;
	private Long mobile;
	private String password;
	
    private boolean active;

	@OneToOne
	@JoinColumn(name = "customerId")
	private Customer customer;
	
	public Long getMobile() {
		return mobile;
	}
	public void setMobile(Long mobile) {
		this.mobile = mobile;
	}
	public String getUserId()
	{
		return userId;
	}
	public void setUserId(String userId) {
		this.userId=userId;

	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}*/
	

}
