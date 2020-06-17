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

import org.hibernate.validator.constraints.NotEmpty;
 
@Entity(name="USERS")
public class Credentials {

	 @Id
	 @Column(name = "USERNAME", nullable = false, unique = true)
	 @NotEmpty(message= "The username should not be empty")
 	private String username;
	 @NotEmpty(message= "The password should not be empty")
	 @Column(name = "PASSWORD", nullable = false)
	 private String password;
	 @NotEmpty(message= "The email should not be empty")
	 @Column(name = "EMAIL", nullable = false)
	 private String email;
	String verifyPassword;
	private Boolean enabled;
	@Column
	private UserRole userRole;
	
    @Column
    @NotEmpty(message= "The firstname should not be empty")
	private String firstName;
    
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
	@NotEmpty(message= "The lastname should not be empty")
	@Column
	private String lastName;
    
	@NotEmpty(message= "The phone should not be empty")
    @Column
	private String phone;
    
    public UserRole getUserRole() {
		return userRole;
	}
	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}
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
