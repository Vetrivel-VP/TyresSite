package com.hotspares.service;

import java.util.List;

import com.hotspares.model.Signup;

public interface SignupService 
{
	
	public int insertRow(Signup sup);

	 public List<Signup> getList();

	 public Signup getRowById(int id);

	 public int updateRow(Signup sup);

	 public int deleteRow(int id);
	 
	 public Signup getSignupByEmail(String email);
	 
}
