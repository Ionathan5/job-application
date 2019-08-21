package com.company.jobapplication;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.company.jobapplication.model.Candidate;
import com.company.jobapplication.repos.CandidateRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class JobApplicationTests {

	@Autowired
	private CandidateRepository candidateRepository;
	
	@Test
	public void contextLoads() {
	}
	
	@Test
	public void insertCandidate() {
		Candidate firstCandidate = new Candidate();
		firstCandidate.setFirstName("Vili");
		firstCandidate.setLastName("Ardelean");
		firstCandidate.setPhone(135498);
		
		candidateRepository.save(firstCandidate);
		
	}
	

}
