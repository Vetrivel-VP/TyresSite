package com.hotspares.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotspares.dao.SupplierDao;
import com.hotspares.model.Supplier;
@Service("supplierService")
public class SupplierServiceImpl implements SupplierService 
{
	@Autowired
	private SupplierDao supplierDao;

	
	@Override
	public List<Supplier> getSuppliers() {
		// TODO Auto-generated method stub
		return supplierDao.getSuppliers();
	}

}
