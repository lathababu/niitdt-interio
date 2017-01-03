package com.niit.interioshoppers.service;

import java.util.List;

import com.niit.interioshoppers.model.User;

public interface UserService {

	public void addUser(User user);
	public List<User> getList();
}
