package com.telecom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.telecom.entity.Customer;
import com.telecom.repositories.CustomerRepository;

@Controller
public class CustomerController {
	
	@Autowired
	CustomerRepository cusrepo;
	
	@RequestMapping("/customerlist")
	public String customerlist(Model model) {
		model.addAttribute("customers",cusrepo.findAll());
		model.addAttribute("command",new Customer());
	    return"customerlist"; 
	}
	
	@RequestMapping("/savecustomer")
	public String savecustomer(@ModelAttribute("customer") Customer customer) {
		cusrepo.save(customer);
		return"redirect:/customerlist";
	}
	
	@RequestMapping(value="/deletecustomer/{cuid}",method = RequestMethod.GET)    
    public String delete(@PathVariable int cuid){    
		cusrepo.deleteById(cuid);    
        return "redirect:/customerlist";    
    }
	
	@RequestMapping("/cloginpage")    
    public String loginpage(Model m){    
        m.addAttribute("command", new Customer());  
        return "cloginpage";
    }
	
	@RequestMapping("/clogin")    
    public String login(@RequestParam int cuid,@RequestParam String pword,Model m){    
    	String p = cusrepo.getp(cuid);
    	m.addAttribute("cuid", cuid);
    	if(pword.equals(p)) {
    		return "forward:/customer";
    	}
    	else {
        return "afail";}
    }
	
	@RequestMapping("/customer")
    public String user(Model model) {
       
         return "customer";
    }


}
