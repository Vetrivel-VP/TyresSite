package com.hotspares.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hotspares.model.CartItem;

@Repository
public class CartItemDaoImpl implements CartItemDao 
{
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional(propagation=Propagation.SUPPORTS)
	public void addCartItem(CartItem cartItem) 
	{
		Session session=sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		   session.saveOrUpdate(cartItem);
		   System.out.println("CartItemDao query get updated");
		   session.flush();
		   tx.commit();
		   session.close();

	}

}
