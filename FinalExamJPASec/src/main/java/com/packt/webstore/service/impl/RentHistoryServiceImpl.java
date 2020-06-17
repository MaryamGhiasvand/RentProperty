package com.packt.webstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.packt.webstore.domain.Credentials;
import com.packt.webstore.domain.Property;
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

	@Override
	public List<RentHistory> findRentHistoriesByOwner(Credentials owner) {
		return (List<RentHistory>) rentHistoryRepository.fingRentHistoryByOwner(owner);
	}

	@Override
	public List<RentHistory> fingRentHistoriesByProduct(Property property) {
		return (List<RentHistory>) rentHistoryRepository.fingRentHistoryByProduct(property);
	}
}
