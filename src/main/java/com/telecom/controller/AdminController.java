package com.telecom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.telecom.entity.Admin;
import com.telecom.repositories.AdminRepository;

@Controller
public class AdminController {
	
	@Autowired
	AdminRepository adminRepo;
	
	 @RequestMapping("/home")                     
	    public String SpringBootHello() {
	        return "home";           
	    }
	 
	 @RequestMapping("/elogin")                     
	    public String elogin() {
	        return "elogin";           
	    }
	 
	 @RequestMapping("/alogin")    
	    public String login(@RequestParam String login,@RequestParam String password,Model m){    
	    	String p = adminRepo.getp(login);
	    	if(password.equals(p)) {
	    		return "admin";
	    	}
	    	else {
	        return "afail";}
	    }
	 
	 @RequestMapping("/aloginpage")    
	    public String loginpage(Model m){    
	        m.addAttribute("command", new Admin());  
	        return "aloginpage";
	    }
	 

}
