package com.company.jobapplication.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.company.jobapplication.model.Candidate;

public interface CandidateRepository extends JpaRepository<Candidate, Integer> {

	Candidate findByFirstName(String firstName);

}
