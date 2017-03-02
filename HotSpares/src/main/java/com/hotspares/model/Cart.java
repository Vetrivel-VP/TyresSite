package com.hotspares.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Cart 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
private int id;
private double grandTotal;
@OneToOne
private Signup signup;
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
