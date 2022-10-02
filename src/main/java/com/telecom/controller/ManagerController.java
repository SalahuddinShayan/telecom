package com.telecom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.telecom.entity.Complaint;
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
	
	@RequestMapping("/mloginpage")    
    public String loginpage(Model m){    
        m.addAttribute("command", new Manager());  
        return "mloginpage";
    }
	
	@RequestMapping("/mlogin")    
    public String login(@RequestParam int mid,@RequestParam String pword,Model m){    
    	String p = managrepo.getp(mid);
    	m.addAttribute("pin", managrepo.getpin(mid));
    	if(pword.equals(p)) {
    		return "forward:/manager";
    	}
    	else {
        return "afail";}
    }
	
	@RequestMapping("/manager")
    public String user(Model model) {
		model.addAttribute("command", new Complaint());       
         return "manager";
    }

}
