package com.packt.webstore.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import com.packt.webstore.domain.RentHistory;

public class EndDateValidation implements ConstraintValidator<EndDate,RentHistory>{

	@Override
	public void initialize(EndDate constraintAnnotation) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isValid(RentHistory rentHistory, ConstraintValidatorContext context) {
		// TODO Auto-generated method stub
		return rentHistory.getEndDate().after(rentHistory.getStartDate());
	}



}
