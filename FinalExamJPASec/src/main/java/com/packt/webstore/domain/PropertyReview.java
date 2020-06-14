package com.packt.webstore.domain;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class PropertyReview {
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	@Column
	private String title;
	
	@Column
	private int starCount;
	
	@Column
	private String comment;
	
	@Column
	private LocalDateTime dateTime;
	
	
	@ManyToOne
    @JoinColumn(name="property_id", nullable=false)
	private Property property;

}
