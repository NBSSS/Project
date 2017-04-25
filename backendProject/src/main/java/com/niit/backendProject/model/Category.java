package com.niit.backendProject.model;



import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.stereotype.Component;
@Component
@Entity
public class Category {
	@Id
	String catId;
	@OneToMany(mappedBy="category",fetch=FetchType.EAGER)
	List<Product>product;
	@Column(unique=true)
	private String cname;
	private String cdescp;
	public String getCatId() {
		return catId;
	}
	public void setCatId(String catId) {
		this.catId = catId;
	}
	public List<Product> getProduct() {
		return product;
	}
	public void setProduct(List<Product> product) {
		this.product = product;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCdescp() {
		return cdescp;
	}
	public void setCdescp(String cdescp) {
		this.cdescp = cdescp;
	}
	
	
	
	
}
