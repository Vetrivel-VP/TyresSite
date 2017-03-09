package com.hotspares.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Cart implements Serializable
{
	private static final long serialVersionUID = -723583058586873479L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id;
private double grandTotal;

@OneToOne
private Signup signup;

@OneToMany(mappedBy="cart",cascade=CascadeType.ALL,fetch=FetchType.EAGER)
private List<CartItem> cartItems;
public List<CartItem> getCartItems() {
	return cartItems;
}
public void setCartItems(List<CartItem> cartItems) {
	this.cartItems = cartItems;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public double getGrandTotal() {
	return grandTotal;
}
public void setGrandTotal(double grandTotal) {
	this.grandTotal = grandTotal;
}
public Signup getSignup() {
	return signup;
}
public void setSignup(Signup signup) {
	this.signup = signup;
}

}
