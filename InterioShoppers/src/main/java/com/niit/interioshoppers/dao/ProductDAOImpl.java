package com.niit.interioshoppers.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.interioshoppers.model.Product;

@Repository("productDao")
public class ProductDAOImpl implements ProductDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory)
	{
		this.sessionFactory=sessionFactory;
	}
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly=false)
	public void addProduct(Product product) {
		
		System.out.println("Product DAO");
		Session session=sessionFactory.openSession();
		System.out.println("Session is created");
		Transaction transaction=(Transaction)session.beginTransaction();
		System.out.println("Transaction is created");
		session.save(product);
		System.out.println("Saving the Product");
		transaction.commit();
		session.close();
	}
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly=true)
	public void updateProduct(Product product) {
		
		System.out.println("Product DAO");
		Session session=sessionFactory.openSession();
		System.out.println("Session is created");
		Transaction transaction=(Transaction)session.beginTransaction();
		System.out.println("Transaction is created");
		session.update(product);
		System.out.println("Updating the Product");
		transaction.commit();
		session.close();
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation = Propagation.SUPPORTS, readOnly=false)
	public List<Product> getList() {
		 Session session=this.sessionFactory.openSession();
		 List<Product> prodlist=session.createQuery("from Product").list();
		 return prodlist;
		
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly=true)
	public Product getProductById(int pid) {
		
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Product product=(Product)session.load(Product.class,pid);
		return product;
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly=true)
	public void removeProduct(int pid) {
		
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
        Product product=(Product)session.get(Product.class,pid);
		session.delete(product);
		System.out.println("Deleting the Product");
		transaction.commit();
		session.close();
		
	}
	
	
}
