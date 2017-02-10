package com.hotspares.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hotspares.model.Category;

@Repository("categoryDao")
public class CatgeoryDaoImpl implements CategoryDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Category> getCategories() 
	{
		Session session=sessionFactory.openSession();
		Query query = session.createQuery("from Category");
		List<Category> categories=query.list();
		session.close();
		return categories;
	}
}
