package com.packt.webstore.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class FavoriteProperties {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@ManyToOne()
	@JoinColumn(name = "property_id")
	private Property property;
	
	@ManyToOne
	@JoinColumn(name = "user_name")
	private Credentials users;

	public Property getProperty() {
		return property;
	}

	public void setProperty(Property property) {
		this.property = property;
	}

	public Credentials getUsers() {
		return users;
	}

	public void setUsers(Credentials users) {
		this.users = users;
	}

	public FavoriteProperties(Property property, Credentials users) {
		super();
		this.property = property;
		this.users = users;
	}

//	public FavoriteProperties() {
//		super();
//	}

//	public long getId() {
//		return id;
//	}
//
//	public void setId(long id) {
//		this.id = id;
//	}	

}
