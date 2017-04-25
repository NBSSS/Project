package com.niit.controller;

import java.lang.reflect.Constructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.backendProject.dao.CategoryDAO;
import com.niit.backendProject.model.Category;

@Controller
public class CategoryController {
	public CategoryController(CategoryDAO categoryDAO) {
		super();
		this.categoryDAO = categoryDAO;
	}
	public  CategoryController(){
	}
	
	@Autowired
	CategoryDAO categoryDAO;
	@RequestMapping("/CategoryDetail")
	public String category(Model model)
	{ 
		model.addAttribute("category",new Category());
		model.addAttribute("listCategory",categoryDAO.getAllCategory());
		
		return "CategoryDetail";
	}
	@RequestMapping("/addCategory")
	public String addCategory(@ModelAttribute("category")Category c,Model model){
		if(categoryDAO.addCategory(c))
		{
		model.addAttribute("msg","Add Catgory");
		}
		else
		{
			model.addAttribute("msg","not successsfully register");
		}
		
		return "CategoryDetail";
	}

}
