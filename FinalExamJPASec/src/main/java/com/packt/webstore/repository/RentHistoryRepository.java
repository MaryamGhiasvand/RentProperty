package com.packt.webstore.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.RentHistory;

@Repository
public interface RentHistoryRepository extends CrudRepository<RentHistory, Long>{
//	public void find();
}
