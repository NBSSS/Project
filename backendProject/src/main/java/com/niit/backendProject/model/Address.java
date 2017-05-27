package com.niit.backendProject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Address {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int AddrId;
	@Column(name="House_Number")
	private String Hno;
	@Column(name="Street")
	private String Str;
	@OneToOne(fetch=FetchType.EAGER)
	private User user;
	private String City;
	private String State;
	private String country;
	@Column(name="Pin_No.")
	private Long pin;
	public int getAddrId() {
		return AddrId;
	}
	public void setAddrId(int addrId) {
		AddrId = addrId;
	}
	public String getHno() {
		return Hno;
	}
	public void setHno(String hno) {
		Hno = hno;
	}
	public String getStr() {
		return Str;
	}
	public void setStr(String str) {
		Str = str;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Long getPin() {
		return pin;
	}
	public void setPin(Long pin) {
		this.pin = pin;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	

}
