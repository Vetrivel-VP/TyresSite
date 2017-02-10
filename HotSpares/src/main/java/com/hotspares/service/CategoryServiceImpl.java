package com.hotspares.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hotspares.dao.CategoryDao;
import com.hotspares.model.Category;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService
{
	@Autowired
	private CategoryDao categoryDao;

	@Override
	public List<Category> getCategories() {
		// TODO Auto-generated method stub
		return categoryDao.getCategories();
	}
	
}
