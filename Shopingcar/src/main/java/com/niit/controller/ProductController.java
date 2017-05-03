package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

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
	@Autowired
	HttpSession httpSession;
	@RequestMapping("/ProductDetail")
	public String product(Model model)
	{ 
		model.addAttribute("product",new Product());
		httpSession.setAttribute("listSup",supDAO.getAllSupplier());
		httpSession.setAttribute("listCategory",categoryDAO.getAllCategory());
		model.addAttribute("listProduct",prodDAO.getAllProduct());
		
		return "ProductDetail";
	}
	@RequestMapping("/addProduct")
	public ModelAndView addProduct(@ModelAttribute("product")Product p,Model model){
		
		ModelAndView m=new ModelAndView("forward:/ProductDetail");
		System.out.println(p.getProductId());
		System.out.println(p.getName());
		System.out.println(p.getDescp());
		
		if(p.getProductId()==0)
		
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
			System.out.println("product is updqating");
			if(prodDAO.updateProd(p))
			{
			model.addAttribute("msg"," Catgory updated Sucessfully");
			}
			else
			{
				model.addAttribute("msg","not updated");
			}			
			
		}
		return m;
		
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
