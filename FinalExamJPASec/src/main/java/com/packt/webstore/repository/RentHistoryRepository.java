package com.packt.webstore.repository;

import org.springframework.data.repository.CrudRepository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.Credentials;
import com.packt.webstore.domain.Property;
import com.packt.webstore.domain.RentHistory;

@Repository
public interface RentHistoryRepository extends CrudRepository<RentHistory, Long>{
	@Query("SELECT ug FROM RentHistory ug INNER JOIN ug.property u where u.credential = :owner")
	public List<RentHistory> fingRentHistoryByOwner(@Param("owner") Credentials owner);
	
	@Query("SELECT ug FROM RentHistory ug where ug.property = :property")
	public List<RentHistory> fingRentHistoryByProduct(@Param("property") Property property);
}
