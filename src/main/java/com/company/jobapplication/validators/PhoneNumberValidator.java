package com.company.jobapplication.validators;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PhoneNumberValidator implements ConstraintValidator<PhoneNumberConstraint, String> {

  @Override
  public void initialize(PhoneNumberConstraint phone) {
  }

  @Override
  public boolean isValid(String contactField,
    ConstraintValidatorContext cxt) {
	  String pattern = "(\\+)?([-\\._\\(\\) ]?[\\d]{3,20}[-\\._\\(\\) ]?){2,10}";
      return contactField != null && contactField.matches(pattern)
        && (contactField.length() > 8) && (contactField.length() < 15);
  }

}