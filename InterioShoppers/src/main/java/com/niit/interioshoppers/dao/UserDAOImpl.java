package com.niit.interioshoppers.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.interioshoppers.model.User;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional(propagation=Propagation.SUPPORTS, readOnly=false)
	public void addUser(User user) {
		
		System.out.println("User DAO");
		Session session=sessionFactory.openSession();
		System.out.println("Session is created");
		Transaction transaction=(Transaction) session.beginTransaction();
		System.out.println("Transaction is created");
		session.saveOrUpdate(user);
		System.out.println("Saving the Data");
		transaction.commit();
		session.close();
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.SUPPORTS, readOnly=false)
	public List<User> getList() {
		
		Session session=this.sessionFactory.openSession();
		List<User> userList=session.createQuery("from User").list();
		return userList;
	}

}
