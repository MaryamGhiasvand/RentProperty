package com.packt.webstore.domain;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
 
@Entity(name="USERS")
public class Credentials {

	 @Id
	 @Column(name = "USERNAME", nullable = false, unique = true)
	 @NotEmpty(message= "{NotEmpty}")
	 @Size(min=5, max=15, message="{Size.Validation}")
 	private String username;
	 
	 
	 @NotEmpty(message= "{NotEmpty}")
	 @Column(name = "PASSWORD", nullable = false)
	 private String password;
	 
	 
	 @Email(message="{Email.Validation}")
	 @NotEmpty(message= "{NotEmpty}")
	 @Column(name = "EMAIL", nullable = false)
	 private String email;
	 
	String verifyPassword;

	private Boolean enabled;
	
	@Column
	private UserRole userRole;
	
    @Column
    @NotEmpty(message= "{NotEmpty}")
	private String firstName;
    
	@NotEmpty(message= "{NotEmpty}")
	@Column
	private String lastName;
    
	
    @Column
    @Size(min=10, max=10, message="{Size.Phone.Validation}")
	private String phone;
    
    public List<Property> getProperties() {
		return properties;
	}
	public void setProperties(List<Property> properties) {
		this.properties = properties;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
    
    public UserRole getUserRole() {
		return userRole;
	}
	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}
	
	@OneToOne(mappedBy = "credential", cascade = CascadeType.ALL)
	private RentHistory rentHistory;
	
	@OneToMany(mappedBy = "credential", cascade = CascadeType.ALL)
	private List<Property> properties;
	
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name="USERNAME", referencedColumnName= "USERNAME") 
	List<Authority> authority;
	
 	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getVerifyPassword() {
		return verifyPassword;
	}
	public void setVerifyPassword(String verifyPassword) {
		this.verifyPassword = verifyPassword;
	}
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	public List<Authority> getAuthority() {
		return authority;
	}
	public void setAuthority(List<Authority> authority) {
		this.authority = authority;
	}
}
