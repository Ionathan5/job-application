package com.company.jobapplication.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.company.jobapplication.model.Candidate;
import com.company.jobapplication.repos.CandidateRepository;

@Service
public class CandidateServiceImpl implements CandidateService {
	
	@Autowired
	private CandidateRepository repository;

	@Override
	public Candidate saveCandidate(Candidate candidate) {
		return repository.save(candidate);
	}

	@Override
	public Candidate updateCandidate(Candidate candidate) {
		return repository.save(candidate);
	}

	@Override
	public void deleteCandidate(Candidate candidate) {
		repository.delete(candidate);

	}

	@Override
	public Candidate getCandidateById(int id) {
		return repository.findById(id).orElse(null);
	}

	@Override
	public List<Candidate> getAllCandidates() {
		return repository.findAll();
	}

	public CandidateRepository getRepository() {
		return repository;
	}

	public void setRepository(CandidateRepository repository) {
		this.repository = repository;
	}

}
