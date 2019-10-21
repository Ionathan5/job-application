package com.company.jobapplication.service;

import java.util.List;

import com.company.jobapplication.model.Candidate;

public interface CandidateService {
	Candidate saveCandidate(Candidate candidate);

	Candidate updateCandidate(Candidate candidate);

	void deleteCandidate(Candidate candidate);

	Candidate getCandidateById(int id);

	List<Candidate> getAllCandidates();
}
