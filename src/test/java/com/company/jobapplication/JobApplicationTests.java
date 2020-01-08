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

//	@Test
//	public void insertCandidate() {
//		Candidate firstCandidate = new Candidate();
//		firstCandidate.setFirstName("Ionathan");
//		firstCandidate.setLastName("Ardelean");
//		firstCandidate.setPhone("0758365094");
//		candidateRepository.save(firstCandidate);
//		System.out.println();
//
//	}

	/*
	 * @Test
	 * 
	 * public void testFindCandidateById() { Candidate candidate =
	 * candidateRepository.findById(1).orElse(null); System.out.println(candidate);
	 * 
	 * }
	 */

	/*
	 * @Test public void testUpdateCandidate() { Candidate candidate =
	 * candidateRepository.findById(1).orElse(null);
	 * candidate.setEmail("ionathan_ar@yahoo.com");
	 * candidateRepository.save(candidate); System.out.println(candidate);
	 * 
	 * }
	 */

//	@Test
//	public void testDeteleteCandidate() { 
//		candidateRepository.deleteById(1);
//	}
}
