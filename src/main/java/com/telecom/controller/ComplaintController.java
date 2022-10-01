package com.telecom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.telecom.entity.Complaint;
import com.telecom.repositories.ComplaintRepository;

@Controller
public class ComplaintController {
	
	@Autowired
	ComplaintRepository comrepo;
	
	@RequestMapping("/registercomplaint")
    public String save(@ModelAttribute("complaint")Complaint complaint,Model model){    
		comrepo.save(complaint);
    	model.addAttribute("coid", complaint.getCoid());
        return "forward:/complaintregisterd";   
    }
    
    @RequestMapping("/complaintregisterd")
    public String complaint(Model model) {
       
         return "complaintregisterd";
    }
    
    @RequestMapping("/customercomplaint")    
    public String userbyid(@RequestParam int cuid,Model m){    
    	m.addAttribute("complaints", comrepo.bycuid(cuid));
    	m.addAttribute("command", new Complaint());
        return "customercomplaint";
    }
    
    @RequestMapping("/savefeedback")
    public String user(@ModelAttribute("complaint")Complaint complaint,Model model) {
    	comrepo.save(complaint);
         return "savefeedback";
    }


}
