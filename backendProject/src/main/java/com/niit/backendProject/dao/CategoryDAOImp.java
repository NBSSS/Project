package com.niit.backendProject.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.backendProject.model.Category;



@Transactional
@Repository("categoryDAO")
public class CategoryDAOImp implements CategoryDAO {

	
public CategoryDAOImp(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

public CategoryDAOImp(){}
@Autowired
SessionFactory sessionFactory;
	public boolean addCategory(Category c) {
		Session s=sessionFactory.getCurrentSession();
		c.setCatId(c.getCname());
	try {
		s.persist(c);
	} catch (Exception e) {
		e.printStackTrace();
		return false;
	}	
		
		return true;
	}

	public boolean update(Category c) {
		Session sf=sessionFactory.getCurrentSession();
		
		try {
			sf.update(c);
		}catch (Exception e) {
				e.printStackTrace();
				return false;
			}
			return true;
		
}

	@SuppressWarnings("unchecked")
	public List<Category> getAllCategory() {
		
		Session ss=sessionFactory.getCurrentSession();
		Query qu=ss.createQuery("from Category");
		List<Category> listCategory=(List<Category>)qu.list();
		return listCategory;
	}
}
	
