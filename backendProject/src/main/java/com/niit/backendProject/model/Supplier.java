package com.niit.backendProject.model;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.stereotype.Component;
@Component
@Entity
public class Supplier {
	@Id
	private String supId;
	@OneToMany(mappedBy="supplier",fetch=FetchType.EAGER)
	Set<Product>product;
	@Column(unique=true)
	private String sname;
	private String sdescp;
	public String getSupId() {
		return supId;
	}
	public void setSupId(String supId) {
		this.supId = supId;
	}
	public Set<Product> getProduct() {
		return product;
	}
	public void setProduct(Set<Product> product) {
		this.product = product;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSdescp() {
		return sdescp;
	}
	public void setSdescp(String sdescp) {
		this.sdescp = sdescp;
	}
	

}