package com.niit.interioshoppers.dao;

import java.util.List;

import com.niit.interioshoppers.model.Product;

public interface ProductDAO {

	public void addProduct(Product product);
	public void updateProduct(Product product);
	public List<Product> getList();
	public Product getProductById(int pid);
	public void removeProduct(int pid);
}
