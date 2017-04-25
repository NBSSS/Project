package com.niit.backendProject.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;


import com.niit.backendProject.model.Supplier;

@Transactional
@Repository("supDAO")
public class SupDAOImpl implements SupDAO{
	public SupDAOImpl(){}

	SessionFactory sessionFactory;
public boolean addSuppiler(Supplier s) {
	Session sf=sessionFactory.getCurrentSession();
	s.setSupId(s.getSupId());
	try {
		sf.persist(s);
	} catch (Exception e) {
		e.printStackTrace();
		return false;
	}
	return true;
}

public boolean update(Supplier s) {
	Session sf=sessionFactory.getCurrentSession();
	
	try {
		sf.update(s);
	} catch (Exception e) {
		e.printStackTrace();
		return false;
	}
	return true;
}


public List<Supplier> getAllSupplier() {
	Session ss=sessionFactory.getCurrentSession();
	Query qu=ss.createQuery("from Category");
	List<Supplier> listSup=(List<Supplier>)qu.list();
	return listSup;
}

	
	

}
