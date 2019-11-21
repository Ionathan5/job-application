package com.company.jobapplication.service;

import com.company.jobapplication.model.Candidate;

public interface EmailService {
	void sendApplyConfirmationMail(Candidate candidate);
}