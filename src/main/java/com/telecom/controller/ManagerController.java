package com.telecom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.telecom.entity.Manager;
import com.telecom.repositories.ManagerRepository;

@Controller
public class ManagerController {
	@Autowired
	ManagerRepository managrepo;
	
	@RequestMapping("/managerlist")
	public String managerlist(Model model) {
		model.addAttribute("managers",managrepo.findAll());
		model.addAttribute("command",new Manager());
	 return"managerlist"; 
	}
	
	@RequestMapping("/savemanager")
	public String savemanager(@ModelAttribute("manager") Manager manager) {
		managrepo.save(manager);
		return"redirect:/managerlist";
	}
	
	@RequestMapping(value="/deletemanager/{mid}",method = RequestMethod.GET)    
    public String delete(@PathVariable int mid){    
        managrepo.deleteById(mid);    
        return "redirect:/managerlist";    
    }     

}
