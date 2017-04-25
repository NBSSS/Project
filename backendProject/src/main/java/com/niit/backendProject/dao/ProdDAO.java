package com.niit.backendProject.dao;



import java.util.List;

import com.niit.backendProject.model.Product;

public interface ProdDAO {
	public boolean addProduct(Product p);
	public boolean update(Product p);
	List<Product>getAllProduct();	
	

}
