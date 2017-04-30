package com.niit.backendProject.dao;


import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.backendProject.model.Category;
import com.niit.backendProject.model.Product;
@Repository("productDAO")
@Transactional

public class ProdDAOImpl implements ProdDAO {
@Autowired
SessionFactory sessionFactory;

	
	public boolean addProduct(Product p) {
		Session f=sessionFactory.getCurrentSession();
		//p.setProductId(p.getProductId());
		try {
			f.persist(p);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public Set<Product> getProduct() {
		
		Session ss=sessionFactory.getCurrentSession();
		Query qu=ss.createQuery("from Product");
		Set<Product> setProduct=(Set<Product>)qu.list();
		return setProduct;
	}



	public boolean updateProd(Product p) {
		try {
			Session s=sessionFactory.getCurrentSession();
			s.update(p);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}



	
	public List<Product> getAllProduct() {
		
		Session ss=sessionFactory.getCurrentSession();
		Query qu=ss.createQuery("from Product");
		List<Product> listProduct=(List<Product>)qu.list();
		return listProduct;
	}
	
	public Product getProductName(String name) {
		Session s=sessionFactory.getCurrentSession();
		Query q=s.createQuery("from Product where name=?");
		q.setString(0, name);
		return (Product) q.list().get(0);
		//return s.get(Product.class,name);
		
		
	}



	@Override
	public boolean deleteProduct(String name) {
		Session sg=sessionFactory.getCurrentSession();
		sg.delete(getProductName(name));
		return true;
	}



	
	

}
