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
	private Authority authority;

	public Property getProperty() {
		return property;
	}

	public void setProperty(Property property) {
		this.property = property;
	}

	public Authority getAuthority() {
		return authority;
	}

	public void setAuthority(Authority authority) {
		this.authority = authority;
	}

	public FavoriteProperties(Property property, Authority authority) {
		super();
		this.property = property;
		this.authority = authority;
	}
	
	

}
