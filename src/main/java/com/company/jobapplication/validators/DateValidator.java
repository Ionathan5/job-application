package com.company.jobapplication.validators;

import java.time.LocalDate;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class DateValidator implements ConstraintValidator<DateConstraint, LocalDate> {

  @Override
  public void initialize(DateConstraint date) {
  }

  @Override
  public boolean isValid(LocalDate date, ConstraintValidatorContext cxt) {
      boolean valid = date !=null && date.getYear() == 2019;
	  return valid;
  }

}
