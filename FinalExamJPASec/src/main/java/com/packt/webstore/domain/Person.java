package com.packt.webstore.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
public abstract class Person {
    @Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
    
    @Column
	private String firstName;
    
    @Column
	private String lastName;
    
    @Column
	private String phone;
	
}
