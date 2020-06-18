package com.packt.webstore.validation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = EndDateValidation.class)
public @interface EndDate {
	String message() default "End date should be after Start date";
	Class<?>[] groups() default {};
	public abstract Class<? extends Payload>[] payload()default{};

}
