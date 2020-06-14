package com.packt.webstore.domain;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RentHistory {
	
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	@Column
	private LocalDate startDate;
	
	@Column
	private LocalDate endDate;
	
	@Column
	private float price;
	
	@Column
	private HistoryStatus status;

}
