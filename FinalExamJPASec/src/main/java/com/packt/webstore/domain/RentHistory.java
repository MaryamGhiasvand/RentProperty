package com.packt.webstore.domain;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "renthistory")
public class RentHistory {
	
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	@DateTimeFormat(pattern = "MM-dd-yyyy")
	private Date startDate;
	
	@DateTimeFormat(pattern = "MM-dd-yyyy")
	private Date endDate;
	
	@Column
	private float price;
	
	@Column
	private HistoryStatus status;	

	private String comment;
	

	@ManyToOne
    @JoinColumn(name="property_id", nullable=false)
	private Property property;
	
	@OneToOne
	private Credentials credential;

	public RentHistory() {}
	
	public Property getProperty() {
		return property;
	}

	public Credentials getCredential() {
		return credential;
	}

	public void setCredential(Credentials credential) {
		this.credential = credential;
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

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
}
