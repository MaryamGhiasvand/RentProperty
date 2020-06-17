package com.packt.webstore.service;

import java.util.List;

import com.packt.webstore.domain.Credentials;
import com.packt.webstore.domain.Property;
import com.packt.webstore.domain.RentHistory;

public interface RentHistoryService {
	public void save(RentHistory rentHistory);
	public List<RentHistory> findRentHistoriesByOwner(Credentials owner);
	public List<RentHistory> fingRentHistoriesByProduct(Property property);
}
