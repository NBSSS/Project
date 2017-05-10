package com.niit.backendProject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {

	@Id
	private String userId;
		@Column(unique=true)
	private String name;
	private String address;
	private Long mobile;
    private boolean active;
	
	public String getName() 
	{
		return name;
	}
	
	public void setName(String name)
	{
		this.name = name;
	}
	
	public String getAddress()
	{
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
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
	

}
