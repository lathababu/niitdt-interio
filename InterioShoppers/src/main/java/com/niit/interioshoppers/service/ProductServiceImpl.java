package com.niit.interioshoppers.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.interioshoppers.dao.ProductDAO;
import com.niit.interioshoppers.model.Product;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired 
	private ProductDAO productDao;
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly=false)
	public void addProduct(Product product) {
		
		productDao.addProduct(product);
		
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly=true)
	public void updateProduct(Product product) {
		
		productDao.updateProduct(product);
		
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly=false)
	public List<Product> getList() {
		
		return this.productDao.getList();
	}
	
	@Transactional(propagation = Propagation.SUPPORTS, readOnly=true)
	public Product getProductById(int pid) {
		
		return productDao.getProductById(pid);
	}

	@Transactional(propagation = Propagation.SUPPORTS, readOnly=true)
	public void removeProduct(int pid) {
		System.out.println("Remove Product");
		productDao.removeProduct(pid);
		
	}

}
