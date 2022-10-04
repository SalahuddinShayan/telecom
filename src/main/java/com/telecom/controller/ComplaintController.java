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
    public String feedback(@ModelAttribute("complaint")Complaint complaint,Model model) {
    	comrepo.save(complaint);
         return "savefeedback";
    }
    
    @RequestMapping("/complaintlist")
	public String customerlist(Model model) {
		model.addAttribute("complaints",comrepo.findAll());
	    return"complaintlist"; 
	}
    
    @RequestMapping("/macomplaint")    
    public String mcomp(@RequestParam long pin,Model m){    
    	m.addAttribute("complaints", comrepo.getbypin(pin));
    	m.addAttribute("command", new Complaint());
        return "macomplaint";
    }
    
    @RequestMapping("/assigneng")
    public String assign(@ModelAttribute("complaint")Complaint complaint,Model model) {
    	comrepo.save(complaint);
         return "redirect:/mloginpage";
    }
    
    @RequestMapping("/ecomplaintlist")    
    public String ecomp(@RequestParam int eid,Model m){    
    	m.addAttribute("complaints", comrepo.byeid(eid));
    	m.addAttribute("command", new Complaint());
        return "ecomplaintlist";
    }
    
    @RequestMapping("/updatestatus")
    public String updatestatus(@ModelAttribute("complaint")Complaint complaint,Model model) {
    	comrepo.save(complaint);
         return "redirect:/eloginpage";
    }
    
    @RequestMapping("/eucomplaint")    
    public String eccomp(@RequestParam int eid, @RequestParam int cuid, Model m){    
    	m.addAttribute("complaints", comrepo.byeidcuid(eid,cuid));
    	m.addAttribute("command", new Complaint());
        return "eucomplaint";
    }


}
