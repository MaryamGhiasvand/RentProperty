package com.packt.webstore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.packt.webstore.domain.RentHistory;
import com.packt.webstore.repository.RentHistoryRepository;
import com.packt.webstore.service.RentHistoryService;

@Service
@Transactional
public class RentHistoryServiceImpl implements RentHistoryService{
	
	@Autowired 
	RentHistoryRepository rentHistoryRepository;
	
	@Override
	public void save(RentHistory rentHistory) {
		rentHistoryRepository.save(rentHistory);
		
	}

}
