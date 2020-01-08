package com.company.jobapplication.validators;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Documented
@Constraint(validatedBy = DateValidator.class)
@Target( {ElementType.FIELD })
@Retention(RetentionPolicy.RUNTIME)
public @interface DateConstraint {
    String message() default "Please provide a valid date in format YYYY-MM-DD after today date";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
