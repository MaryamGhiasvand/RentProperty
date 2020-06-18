package com.packt.webstore.domain;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class PropertyReview {
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	@Column
	@NotEmpty(message= "{NotEmpty}")
	private String title;
	
	@Column
	private int starCount;
	
	@Column
	@NotEmpty(message= "{NotEmpty}")
	private String comment;
	
	
	
	@ManyToOne
	
    //@JoinColumn(name="property_id", nullable=false)
	private Property property;

	@OneToOne
    //@JoinColumn(name="property_id", nullable=false)
	private Credentials credentials;
	
	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public Credentials getCredentials() {
		return credentials;
	}


	public void setCredentials(Credentials credentials) {
		this.credentials = credentials;
	}




	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public int getStarCount() {
		return starCount;
	}


	public void setStarCount(int starCount) {
		this.starCount = starCount;
	}


	public String getComment() {
		return comment;
	}


	public void setComment(String comment) {
		this.comment = comment;
	}




	public Property getProperty() {
		return property;
	}


	public void setProperty(Property property) {
		this.property = property;
	}





	public PropertyReview(String title, int starCount, String comment, LocalDateTime dateTime, Property property,
			Credentials credentials) {
		super();
		this.title = title;
		this.starCount = starCount;
		this.comment = comment;
		this.property = property;
		this.credentials = credentials;
	}


	public PropertyReview() {
		super();
	}
	
	

}
