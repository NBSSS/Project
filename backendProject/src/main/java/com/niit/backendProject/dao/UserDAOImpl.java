package com.niit.backendProject.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.backendProject.model.Author;
import com.niit.backendProject.model.User;

@Repository("userDao")
@Transactional

public class UserDAOImpl implements UserDAO {

	@Autowired
	SessionFactory sessionFactory;
	public boolean addUser(User u) {
		Session sf=	sessionFactory.getCurrentSession();
		Author auth=new Author();
		auth.setUsername(u.getUserId());
		auth.setRole("Role_User");
		u.setActive(true);
		u.setUserId(u.getName());
		
		try {
			sf.persist(auth);
			sf.persist(u);
		} catch (Exception e) {
			return false;
		}
		return true;
	}
	public List<User> getUser() {
		Session ss=sessionFactory.getCurrentSession();
		@SuppressWarnings("rawtypes")
		Query qu=ss.createQuery("from User");
		@SuppressWarnings("unchecked")
		List<User> listUser=(List<User>)qu.list();
		return listUser;
}

	}
