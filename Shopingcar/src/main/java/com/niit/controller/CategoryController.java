package com.niit.controller;



import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.niit.backendProject.dao.CategoryDAO;
import com.niit.backendProject.model.Category;

@Controller
public class CategoryController {
	
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
		if(c.getCatId()==0)
		{
		System.out.println("c.getCatId is zero");
		
		MultipartFile file=c.getImage();
		categoryDAO.addProduct(p);
		HttpSession	session=request.getSession();
		ServletContext con=session.getServletContext();
		String filelocation=con.getRealPath("/resources/images/");
		System.out.println(filelocation);
		String filename=filelocation+"\\"+c.getCatId()+".jpg";
		System.out.println(filename);
		
		try{
			byte b[]=file.getBytes();
			FileOutputStream fos=new FileOutputStream(filename);
			fos.write(b);
			fos.close();
	    	}
		catch(IOException ex){}
		catch(Exception e){}
			}	
		else{
			System.out.println("product is updating");
		this.categoryDAO.update(c);		
			}
	
	
		if(categoryDAO.getCategoryId(c.getCname())==null)
		{
		if(categoryDAO.addCategory(c))
		{
		model.addAttribute("msg"," Catgory added Sucessfully");
		}
		else
		{
			model.addAttribute("msg","not successsfully register");
		}}
		else{
			categoryDAO.update(c);
			
		}
		
		return "redirect:/CategoryDetail";
	}
	@RequestMapping("/updateCategory/{catId}")
	//public String editCategory(@PathVariable("catId") String catId,Model model){
	//public String editCategory(@PathVariable() String id,Model model){ it gives error
public String updateCategory(@PathVariable("") String catId,Model model){
		model.addAttribute("category",categoryDAO.getCategoryId(catId));
		model.addAttribute("listCategory",categoryDAO.getAllCategory());
		return "CategoryDetail";
	}
	
	
	@RequestMapping("/deleteCategory/{catId}")
	public String deleteCategory(@PathVariable("catId") String catId,Model model)
		{
			categoryDAO.deleteCat(catId);
			
		return "redirect:/CategoryDetail";
		}
	
	
}
