package com.niit.backendProject.dao;

import java.util.List;


import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.backendProject.model.Cart;
@Transactional
@Repository("cartDAO")
public class CartDAOImp implements CartDAO {
	
	Logger log=LoggerFactory.getLogger("CartDAOImp.class");
	
	@Autowired
	SessionFactory sessionFactory;

	public boolean save(Cart k) {
		try {
			log.debug("Intilization of Add Method");
			Session s=sessionFactory.getCurrentSession();
			s.persist(k);
			log.debug("Sucessfully added to cart in database");
		} catch (Exception e) {
			log.error("error occurs in method");
			return false;
		}
		return true;
	}

	public boolean update(Cart k) {
		try {
			log.debug("Intializing the update method for database");
			
			Session s=sessionFactory.getCurrentSession();
			
			s.update(k);
			
			log.debug("Sucessfully Updated values in database");
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
			log.error("Error in update method");
			
			return false;
		}
		return true;
	}
	

	public boolean delete(Cart k) {
		try {
			log.debug("Intializing the delete method for database");
			
			Session s=sessionFactory.getCurrentSession();
			
			s.delete(k);
			
			log.debug("Sucessfully deleted values in database");
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
			log.error("Error in delete method");
			
			return false;
		}
		return true;
	}
	@SuppressWarnings("deprecation")
	public List<Cart> list(String userId) {
		Session s=sessionFactory.getCurrentSession();
		@SuppressWarnings("rawtypes")
		Query query=s.createQuery("from Cart where userId=?");
		query.setString(0, userId);
	@SuppressWarnings("unchecked")
	List<Cart>listCart=query.getResultList();
	return listCart;
	}
	

	@SuppressWarnings("deprecation")
	public Cart get(int cartId) {
		Session s=sessionFactory.getCurrentSession();
		@SuppressWarnings("rawtypes")
		Query q=s.createQuery("from Cart where cartId=?");
		q.setInteger(0, cartId);
		return(Cart)q.list().get(0);
	}

	public Double getTotalAmmount(String userId) {
		Session s=sessionFactory.getCurrentSession();
		@SuppressWarnings("rawtypes")
		Query q=s.createQuery(" select sum(price) from Cart where userID = ?");
		return(Double)q.uniqueResult();
	}

	public Cart getCart(String userId) {
		Session s=sessionFactory.getCurrentSession();
		Query q=s.createQuery("from Cart where userId=?");
		q.setString(0, userId);
		return(Cart)q.list().get(0);
	}

	public Integer getQty(String pname) {
		Session s=sessionFactory.getCurrentSession();
		Query q=s.createQuery("from Cart where pname=?");
		q.setString(0, pname);
		return(Integer)q.list().get(0);
	}
		
	}


