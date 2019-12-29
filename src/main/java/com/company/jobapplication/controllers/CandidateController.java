package com.company.jobapplication.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.jobapplication.model.Candidate;
import com.company.jobapplication.service.CandidateService;
import com.company.jobapplication.service.EmailService;

@Controller
public class CandidateController {

	@Autowired
	private CandidateService service;
	
	
	@Autowired
	private EmailService emailService;

	@RequestMapping("/showCreate" )
	public String showCreate(@ModelAttribute("candidate") Candidate candidate, BindingResult result) {
		return "createCandidate";
	}
 
	@RequestMapping(path="/saveCand",method = RequestMethod.POST)
	public String saveCandidate(@Valid @ModelAttribute("candidate") Candidate candidate, BindingResult result,
			ModelMap modelMap) {
		if (result.hasErrors()) {
			modelMap.addAttribute("candidate",candidate);
			return "createCandidate";
		}
		Candidate candidateSaved = service.saveCandidate(candidate);
		String msg = "Candidate was saved with id:" + candidateSaved.getId();
		modelMap.addAttribute("msg", msg);
		emailService.sendApplyConfirmationMail(candidate);
		return "createCandidate";
	}

	@RequestMapping("/displayCandidates")
	public String displayCandidates(ModelMap modelMap) {
		List<Candidate> candidates = service.getAllCandidates();
		modelMap.addAttribute("candidates", candidates);
		return "displayCandidates";
	}

	@RequestMapping("/deleteCandidate")
	public String deleteCandidate(@RequestParam("id") int id, ModelMap modelMap) {
		Candidate candidate = service.getCandidateById(id);
		service.deleteCandidate(candidate);
		List<Candidate> candidates = service.getAllCandidates();
		modelMap.addAttribute("candidates", candidates);
		return "displayCandidates";
	}

	@RequestMapping("/showUpdate")
	public String showUpdate(@ModelAttribute("candidate") Candidate candidate, BindingResult result, @RequestParam("id") int id, ModelMap modelMap) {
		candidate = service.getCandidateById(id);
		modelMap.addAttribute("candidate", candidate);
		return "updateCandidate";
	}

	@RequestMapping(path="/updateCand",method = RequestMethod.POST)
	public String updateCandidate(@Valid @ModelAttribute("candidate") Candidate candidate, BindingResult result, ModelMap modelMap) {
		if (result.hasErrors()) {
			return "updateCandidate";
		}
		System.out.println("Start date is "+candidate.getStartDate());
		service.updateCandidate(candidate);
		List<Candidate> candidates = service.getAllCandidates();
		modelMap.addAttribute("candidates", candidates);
		return "displayCandidates";
	}
}
