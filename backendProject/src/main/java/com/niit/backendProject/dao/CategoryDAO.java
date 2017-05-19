package com.niit.backendProject.dao;

import java.util.List;

import com.niit.backendProject.model.Category;

public interface CategoryDAO {
	//----------Creating table in database------------
public boolean addCategory(Category c);


/*-----------Update the category ----------*/
public boolean update(Category c);


List<Category>getAllCategory();
public Category getCategoryId(String id);
public boolean deleteCat(String id);

}
