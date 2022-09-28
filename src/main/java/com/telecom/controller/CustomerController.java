package com.telecom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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


}
