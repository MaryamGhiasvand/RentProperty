package com.packt.webstore.service;

import com.packt.webstore.domain.PropertyReview;

public interface ReviewService {

	public void save(PropertyReview review);

	public void delete(long review_id);
	
//	public void findAllReviews(long Property_Id);
//	public void update(PropertyReview review);
}
