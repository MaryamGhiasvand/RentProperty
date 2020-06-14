package com.packt.webstore.domain;

import javax.persistence.Column;
import javax.persistence.Entity;

import com.sun.org.apache.xpath.internal.operations.Bool;

@Entity
public class User extends Person{
	
	@Column
	private String userName;
	
	@Column
	private String password;
	
	@Column
	private String email;
	
	@Column
	private Bool enabled;
	
	@Column
	private UserRole userRole;
}
