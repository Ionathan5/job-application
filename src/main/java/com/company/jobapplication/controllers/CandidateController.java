package com.company.jobapplication.controllers;

import java.text.SimpleDateFormat;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.company.jobapplication.util.EmailUtil;
import com.company.jobapplication.model.Candidate;
import com.company.jobapplication.repos.CandidateRepository;
import com.company.jobapplication.service.CandidateService;

@Controller
public class CandidateController {

	@Autowired
	CandidateService service;

	@Autowired
	CandidateRepository repository;

	@Autowired
	EmailUtil emailUtil;

	@RequestMapping("/showCreate")
	public String showCreate() {
		return "createCandidate";
	}

	@RequestMapping("/saveCand")
	public String saveCandidate(@ModelAttribute("candidate") Candidate candidate, ModelMap modelMap) {
		Candidate candidateSaved = service.saveCandidate(candidate);
		String msg = "Candidate was saved with id:" + candidateSaved.getId();
		modelMap.addAttribute("msg", msg);
		emailUtil.sendEmail(candidate.getEmail(), "Thank you for your application",
				"Hi " + (candidate.getFirstName() + " ,\r\n" + "\r\n" + "Thank you for applying to the "
						+ (candidate.getJobTitle()) + " position at Random SRL."));
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
	public String showUpdate(@RequestParam("id") int id, ModelMap modelMap) {
		Candidate candidate = service.getCandidateById(id);
		modelMap.addAttribute("candidate", candidate);
		return "updateCandidate";
	}

	@RequestMapping("/updateCand")
	public String updateCandidate(@ModelAttribute("candidate") Candidate candidate, ModelMap modelMap) {
		service.updateCandidate(candidate);
		List<Candidate> candidates = service.getAllCandidates();
		modelMap.addAttribute("candidates", candidates);
		return "displayCandidates";
	}

}
