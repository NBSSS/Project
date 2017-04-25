package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.backendProject.dao.SupDAO;

import com.niit.backendProject.model.Supplier;


@Controller
public class SupplierController {
	public SupplierController(SupDAO supDAO) {
		super();
		this.supDAO = supDAO;
	}
	public SupplierController(){
		
	}
	@Autowired
	SupDAO supDAO;
	@RequestMapping("/Supplier")
	public String category(Model model)
	{ 
		model.addAttribute("supplier",new Supplier());
		model.addAttribute("listSup",supDAO.getAllSupplier());
		
		return "Supplier";
	}
	@RequestMapping("/addSupplier")
	public String addSupplier(@ModelAttribute("supplier")Supplier s,Model model){
		if(supDAO.addSuppiler(s))
		{
		model.addAttribute("msg","Add Supplier");
		}
		else
		{
			model.addAttribute("msg","not successsfully register");
		}
		
		return "Supplier";
	}

}

