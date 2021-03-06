package com.packt.webstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.packt.webstore.domain.PropertyReview;
import com.packt.webstore.repository.ReviewRepository;
import com.packt.webstore.service.ReviewService;

@Service
@Transactional 
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	private ReviewRepository reviewRepository;

	public void save(PropertyReview review) {
		
		try{
			reviewRepository.save(review);
		}
		catch(Exception ex){
			System.out.print("ex:" +ex);
		}
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

	@Override
	public List<PropertyReview> findByPropertyId(Long propertyId) {
		List<PropertyReview> reviews =reviewRepository.findByPropertyId(propertyId);
		return reviews;
	}

}
