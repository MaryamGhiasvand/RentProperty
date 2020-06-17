package com.packt.webstore.domain;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "property")
public class Property {
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	@Column
	private String title;
	
	@Column
	private String description;
	
	@Column
	private float price;
	
	@Column
	private float area;
	
	@Column
	private LocalDate expireDate;
	
	@Column
	private int bathCount;
	
	@Column
	private int bedCount;
	
	@Column
	private int garageCount;
	
	@Column
	private boolean airConditioning;
	
	@Column
	private boolean grill;
	
	@Column
	private boolean oven;
	
	@Column
	private boolean parking;
	
	@Column
	private PropertyType propertyType;
	
	public Property() {		
	}
	
	public Property(String title, String description, float price, float area, int bedCount) {
		super();
		this.title = title;
		this.description = description;
		this.price = price;
		this.area = area;
		this.bedCount = bedCount;
	}

	@ManyToOne
	private Credentials credential;
	
	@OneToOne(cascade = CascadeType.ALL)
	private Address address;

	//	
//	@OneToMany(mappedBy = "property")
//	private List<PropertyPicture> pictures;
//	
	
	@OneToMany(mappedBy = "property", cascade = CascadeType.REMOVE)
	private List<RentHistory> histories;
	
	@OneToMany(mappedBy = "property" ,cascade = CascadeType.REMOVE)
	private List<PropertyReview> reviews;
	
	@OneToMany(mappedBy = "property" ,cascade = CascadeType.REMOVE)
	private List<FavoriteProperties> favorites;
	
	@OneToMany(mappedBy = "property" ,cascade = CascadeType.REMOVE)
	private List<PropertyPhoto> propertyPhotos;

	public List<PropertyPhoto> getPropertyPhotos() {
		return propertyPhotos;
	}

	public void setPropertyPhotos(List<PropertyPhoto> propertyPhotos) {
		this.propertyPhotos = propertyPhotos;
	}

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public float getArea() {
		return area;
	}
	public void setArea(float area) {
		this.area = area;
	}
	public LocalDate getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(LocalDate expireDate) {
		this.expireDate = expireDate;
	}
	public int getBathCount() {
		return bathCount;
	}
	public void setBathCount(int bathCount) {
		this.bathCount = bathCount;
	}
	public int getBedCount() {
		return bedCount;
	}
	public void setBedCount(int bedCount) {
		this.bedCount = bedCount;
	}
	public int getGarageCount() {
		return garageCount;
	}
	public void setGarageCount(int garageCount) {
		this.garageCount = garageCount;
	}
	public boolean isAirConditioning() {
		return airConditioning;
	}
	public void setAirConditioning(boolean airConditioning) {
		this.airConditioning = airConditioning;
	}
	public boolean isGrill() {
		return grill;
	}
	public void setGrill(boolean grill) {
		this.grill = grill;
	}
	public boolean isOven() {
		return oven;
	}
	public void setOven(boolean oven) {
		this.oven = oven;
	}
	public boolean isParking() {
		return parking;
	}
	public void setParking(boolean parking) {
		this.parking = parking;
	}
	public PropertyType getPropertyType() {
		return propertyType;
	}
	public void setPropertyType(PropertyType propertyType) {
		this.propertyType = propertyType;
	}
	
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}

	public Credentials getCredential() {
		return credential;
	}

	public void setCredential(Credentials credential) {
		this.credential = credential;
	}
}
	
