package com.packt.webstore.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;

@Entity
//@NamedQuery(name = "FavoriteProperties.findAllFavorites", query = "select f from FavoriteProperties f inner join Credentials p on f.username = ?1")
//@NamedQuery(name = "FavoriteProperties.findAllFavorites", query = "SELECT u FROM FavoriteProperties ug " + 
//		"INNER JOIN ug.property u WHERE ug.credentials = ?1")
public class FavoriteProperties {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@ManyToOne()
	//@JoinColumn(name = "property_id")
	private Property property;
	
	@ManyToOne
	@JoinColumn(name = "username")
	private Credentials credentials;

	public Property getProperty() {
		return property;
	}

	public void setProperty(Property property) {
		this.property = property;
	}

	public Credentials getUsers() {
		return credentials;
	}

	public void setUsers(Credentials users) {
		this.credentials = users;
	}
	
	public FavoriteProperties() {
		
	}

	public FavoriteProperties(Property property, Credentials users) {
		super();
		this.property = property;
		this.credentials = users;
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
