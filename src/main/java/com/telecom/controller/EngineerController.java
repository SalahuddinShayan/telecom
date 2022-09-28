package com.telecom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

}
