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
import com.telecom.entity.Engineer;
import com.telecom.repositories.EngineerRepository;

@Controller
public class EngineerController {
	
	@Autowired
	EngineerRepository engrepo;
	
	@RequestMapping("/engineerlist")
	public String managerlist(Model model) {
		model.addAttribute("engineers",engrepo.findAll());
		model.addAttribute("command",new Engineer());
	 return"engineerlist"; 
	}
	
	@RequestMapping("/saveengineer")
	public String savemanager(@ModelAttribute("engineer") Engineer engineer) {
		engrepo.save(engineer);
		return"redirect:/engineerlist";
	}
	
	@RequestMapping(value="/deleteengineer/{eid}",method = RequestMethod.GET)    
    public String delete(@PathVariable int eid){    
        engrepo.deleteById(eid);    
        return "redirect:/engineerlist";    
    }
	
	@RequestMapping("/eloginpage")    
    public String loginpage(Model m){    
		m.addAttribute("command", new Engineer());  
        return "eloginpage";
	}
	
	@RequestMapping("/enlogin")    
    public String login(@RequestParam int eid,@RequestParam String pword,Model m){    
    	String p = engrepo.getp(eid);
    	m.addAttribute("eid", eid);
    	if(pword.equals(p)) {
    		return "forward:/engineer";
    	}
    	else {
        return "afail";}
    }
	
	@RequestMapping("/engineer")    
    public String enghome(Model m){    
		m.addAttribute("command", new Complaint());    
        return "engineer";
	}

}
