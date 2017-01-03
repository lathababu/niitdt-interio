package com.niit.interioshoppers.dao;

import java.util.List;

import com.niit.interioshoppers.model.User;

public interface UserDAO {

	public void addUser(User user);
	public List<User> getList();
}
