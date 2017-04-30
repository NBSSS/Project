package com.niit.backendProject.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.niit.backendProject.model.Supplier;

@Transactional
@Repository("supDAO")
public class SupDAOImpl implements SupDAO{
	@Autowired
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

public boolean updateSup(Supplier s) {
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
	Query qu=ss.createQuery("from Supplier");
	List<Supplier> listSup=(List<Supplier>)qu.list();
	return listSup;
}

@Override
public Supplier getSupplierId(String id) {
	Session sg=sessionFactory.getCurrentSession();
	return sg.get(Supplier.class,id);
}

@Override
public boolean deleteSup(String id) {
	Session s=sessionFactory.getCurrentSession();
	s.delete(getSupplierId(id));
return true;
}


}


	
	


