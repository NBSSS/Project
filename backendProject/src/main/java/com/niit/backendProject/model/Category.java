package com.niit.backendProject.model;


import java.util.Set;

import javax.persistence.CascadeType;
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
	private String catId;
	@OneToMany(mappedBy="category",fetch=FetchType.EAGER ,cascade = CascadeType.REMOVE)
	Set<Product>product;
	@Column(unique=true)
	private String cname;
	
	private String cdescp;

	public String getCatId() {
		return catId;
	}
	public void setCatId(String catId) {
		this.catId = catId;
	}
	public Set<Product> getProduct() {
		return product;
	}
	public void setProduct(Set<Product> product) {
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
