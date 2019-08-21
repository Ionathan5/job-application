package com.company.jobapplication.repos;

import org.springframework.data.repository.CrudRepository;

import com.company.jobapplication.model.Candidate;

public interface CandidateRepository extends CrudRepository<Candidate, Integer> {
	
	Candidate findByFirstName(String firstName);

}
