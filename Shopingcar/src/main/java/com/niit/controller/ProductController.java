package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.backendProject.dao.CategoryDAO;
import com.niit.backendProject.dao.ProdDAO;
import com.niit.backendProject.dao.SupDAO;
import com.niit.backendProject.model.Product;

@Controller
public class ProductController {
	@Autowired
	ProdDAO prodDAO;
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	SupDAO supDAO;
	@RequestMapping("/ProductDetail")
	public String product(Model model)
	{ 
		model.addAttribute("product",new Product());
		model.addAttribute("listSup",supDAO.getAllSupplier());
		model.addAttribute("listCategory",categoryDAO.getAllCategory());
		model.addAttribute("listProduct",prodDAO.getAllProduct());
		
		return "ProductDetail";
	}
	@RequestMapping("/addProduct")
	public String addProduct(@ModelAttribute("product")Product p,Model model){
		if(p.getName()==null && p.getName().isEmpty())
		
		{
		if(prodDAO.addProduct(p))
		{
		model.addAttribute("msg","Add Product");
		}
		else
		{
			model.addAttribute("msg","not successsfully register");
		}
		}
		
		else{
			prodDAO.updateProd(p);
		}
		return "redirect:/ProductDetail";
	}
	
	@RequestMapping("/updateProduct/{name}")
	//public String editCategory(@PathVariable("name") String name,Model model){
	//public String editCategory(@PathVariable() String name,Model model){ it gives error
public String editProduct(@PathVariable() String name,Model model){
		model.addAttribute("product",prodDAO.getProductName(name));
		model.addAttribute("listProduct",prodDAO.getAllProduct());
		return "ProductDetail";
	}
	
	
	@RequestMapping("/deleteProduct/{name}")
	public String deleteProduct(@PathVariable("name") String name,Model model)
		{
			prodDAO.deleteProduct(name);
			
		return "redirect:/ProductDetail";
		}
}
