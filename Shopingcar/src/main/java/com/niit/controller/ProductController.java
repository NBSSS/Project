package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.backendProject.dao.CategoryDAO;
import com.niit.backendProject.dao.ProdDAO;
import com.niit.backendProject.model.Product;

@Controller
public class ProductController {
	@Autowired
	ProdDAO prodDAO;
	@Autowired
	CategoryDAO categoryDAO;
	@RequestMapping("/ProductDetail")
	public String product(Model model)
	{ 
		model.addAttribute("product",new Product());
		model.addAttribute("listCategory",categoryDAO.getAllCategory());
		model.addAttribute("listProduct",prodDAO.getAllProduct());
		
		return "ProductDetail";
	}
	@RequestMapping("/addProduct")
	public String addProduct(@ModelAttribute("product")Product p,Model model){
		if(prodDAO.addProduct(p))
		{
		model.addAttribute("msg","Add Product");
		}
		else
		{
			model.addAttribute("msg","not successsfully register");
		}
		return "ProductDetail";
	}

}
