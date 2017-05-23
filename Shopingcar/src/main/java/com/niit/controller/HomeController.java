package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backendProject.dao.CategoryDAO;
import com.niit.backendProject.dao.ProdDAO;
import com.niit.backendProject.dao.SupDAO;
import com.niit.backendProject.dao.UserDAO;
import com.niit.backendProject.model.Category;
import com.niit.backendProject.model.Product;
import com.niit.backendProject.model.User;

@Controller

public class HomeController {
	@Autowired
	UserDAO userDAO;
	@Autowired 
	SupDAO supDAO;
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	HttpSession httpSession;
	@Autowired
	ProdDAO prodDAO;
	
	

	@RequestMapping(value={"/","Home"})
	public String goHome(){
		httpSession.setAttribute("listSup",supDAO.getAllSupplier());
		httpSession.setAttribute("listCategory",categoryDAO.getAllCategory());
		httpSession.setAttribute("listproduct",prodDAO.getAllProduct() );
		return "Home";
		
	}
	@RequestMapping("/Login") 
	public String Log(){
		return "Login";
	}
	
	

/*@RequestMapping("/logg")
public String lon(@RequestParam("name")String x,@RequestParam("password")String y){
	if(x.equals("Aashish") && y.equals("716"))
	{
		return "logg";	
	}
	else
	{
		return "Home";
	}
	
}*/
@RequestMapping("/Signup")
public String signup(Model model)
{ 
	model.addAttribute("user",new User());
	
	model.addAttribute("userList",userDAO.getUser());
	
	return "Signup";
	
}
@RequestMapping("/addUser")
public String addUser(@ModelAttribute("user") User u,Model model)
{ 
	if(userDAO.addUser(u))
	{
	model.addAttribute("msg","successsfully register");
	}
	else
	{
		model.addAttribute("msg","not successsfully register");
	}
	return "Signup";
}
			
		
	@RequestMapping("/LogOut")
	public ModelAndView logout(){
		ModelAndView mv=new ModelAndView("Login");
		mv.addObject("msg","Sucessfully Logout");
		return mv;
	}
	
		
		
		

}

