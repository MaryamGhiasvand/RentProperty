package com.packt.webstore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.packt.webstore.domain.PropertyReview;
import com.packt.webstore.repository.ReviewRepository;
import com.packt.webstore.service.ReviewService;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	private ReviewRepository reviewRepository;

	public void save(PropertyReview review) {
		reviewRepository.save(review);
	}

	public void delete(long review_id) {
		reviewRepository.delete(review_id);
	}
//	public void findAllReviews(long Property_Id) {
//		reviewRepository.findAllReviews(Property_Id);
//	}
//	public void update(PropertyReview review) {
//		reviewRepository.
//	}

}
