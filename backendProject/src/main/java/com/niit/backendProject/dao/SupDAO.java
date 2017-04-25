package com.niit.backendProject.dao;

import java.util.List;

import com.niit.backendProject.model.Supplier;

public interface SupDAO {
	public boolean addSuppiler(Supplier s);
	public boolean update(Supplier s);
	List<Supplier>getAllSupplier();
	

}
