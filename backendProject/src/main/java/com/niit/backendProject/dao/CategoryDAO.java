package com.niit.backendProject.dao;

import java.util.List;

import com.niit.backendProject.model.Category;

public interface CategoryDAO {
public boolean addCategory(Category c);
public boolean update(Category c);


List<Category>getAllCategory();
public Category getCategoryId(String id);
public boolean deleteCat(String id);

}
