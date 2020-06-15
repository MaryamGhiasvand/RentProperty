package com.packt.webstore.domain;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class FavoriteProperties {
	
	private long id;
	
	@ManyToOne()
	@JoinColumn(name = "property_id")
	private Property property;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

}
