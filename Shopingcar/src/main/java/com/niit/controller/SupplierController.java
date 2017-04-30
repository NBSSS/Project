package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.backendProject.dao.SupDAO;

import com.niit.backendProject.model.Supplier;


@Controller
public class SupplierController {
	
	
	@Autowired
	SupDAO supDAO;
	@RequestMapping("/supplier")
	public String category(Model model)
	{ 
		model.addAttribute("supplier",new Supplier());
		model.addAttribute("listSup",supDAO.getAllSupplier());
		
		return "supplier";
	}
	@RequestMapping("/addSupplier")
	public String addSupplier(@ModelAttribute("supplier")Supplier s,Model model){
		if(supDAO.getSupplierId(s.getSupId())==null)
		{
			
		if(supDAO.addSuppiler(s))
		{
		model.addAttribute("msg","Add Supplier");
		}
		else
		{
			model.addAttribute("msg","not successsfully register");
		}
		}
		else
		{
			supDAO.updateSup(s);
		}
		return "redirect:/supplier";
	}
@RequestMapping("/updateSupplier/{supId}")
public String editSupplier(@PathVariable() String supId,Model model){
	model.addAttribute("supplier",supDAO.getSupplierId(supId));
	model.addAttribute("listSup",supDAO.getAllSupplier());
	return "supplier";
}
	
@RequestMapping("/deleteSupplier/{supId}")
public String deleteSupplier(@PathVariable("supId") String supId,Model model)
	{
		supDAO.deleteSup(supId);
		
	return "redirect:/supplier";
	}	
	
}

