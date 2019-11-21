package com.company.jobapplication.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.company.jobapplication.model.Candidate;
import com.company.jobapplication.util.EmailUtil;

@Component
public class EmailServiceImpl implements EmailService{

	@Autowired
	EmailUtil emailUtil;
	
	@Override
	public void sendApplyConfirmationMail(Candidate candidate) {
		emailUtil.sendEmail(candidate.getEmail(), "Thank you for your application",
				"Hi " + (candidate.getFirstName() + " ,\r\n" + "\r\n" + "Thank you for applying to the "
						+ (candidate.getJobTitle()) + " position at Random SRL."));		
	}

}
