package com.packt.webstore.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity(name="location")
public class Address {

    @Id
	@GeneratedValue(strategy=GenerationType.AUTO)
 	private long id;
    
    @NotEmpty(message = "{NotEmpty}")
    private String state;
    @NotEmpty(message = "{NotEmpty}")
 	private String street;
	private String city;
	@NotEmpty(message = "{NotEmpty}")
	@Size(min = 5, max = 7, message = "{zipcode}")
  	private String zipCode; 

	private float longitude;
	private float latitude;	

	public Address() {		
	}
	
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public float getLongitude() {
		return longitude;
	}

	public void setLongitude(float longitude) {
		this.longitude = longitude;
	}

	public float getLatitude() {
		return latitude;
	}

	public void setLatitude(float latitude) {
		this.latitude = latitude;
	}
}
