package com.packt.webstore.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class RentHistory {
	
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	@Column
	private Date startDate;
	
	@Column
	private Date endDate;
	
	@Column
	private float price;
	
	@Column
	private HistoryStatus status;

	@ManyToOne
    @JoinColumn(name="property_id", nullable=false)
	private Property property;

	public RentHistory() {}
	
	public Property getProperty() {
		return property;
	}

	public void setProperty(Property property) {
		this.property = property;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public HistoryStatus getStatus() {
		return status;
	}

	public void setStatus(HistoryStatus status) {
		this.status = status;
	}
}
