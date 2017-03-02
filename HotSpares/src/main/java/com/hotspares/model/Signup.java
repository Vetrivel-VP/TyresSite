
package com.hotspares.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

@Entity

public class Signup implements Serializable 
{
	private static final long serialVersionUID = -723583058586873479L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer signupid;
	//@Size(min=5, max=10, message="Your name should be between 5 - 10 characters.")
	private String first_name;
	//@Min(value=5, message="Please insert at least 5 characters")
	private String last_name;
	//@Pattern(regexp=".+@.+\\..+", message="Wrong email!")
	@Column(unique=true)
	private String email;
	//@NotNull(message="Please select a password")
	//@Length(min=5, max=10, message="Password should be between 5 - 10 charactes")
	private String password;
	private boolean enabled;
	
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	/*@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="users_id")
	private Users users;*/

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="billingaddress_id")
	private BillingAddress billingAddress;

	

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cart_id")
	private Cart cart;
	
	public Integer getSignupid() {
		return signupid;
	}
	public void setSignupid(Integer signupid) {
		this.signupid = signupid;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
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
	/*public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}*/
	public BillingAddress getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	
}
