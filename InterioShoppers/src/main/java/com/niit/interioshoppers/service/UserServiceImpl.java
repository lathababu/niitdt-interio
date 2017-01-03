package com.niit.interioshoppers.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.niit.interioshoppers.dao.UserDAO;
import com.niit.interioshoppers.model.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	@Transactional(propagation=Propagation.SUPPORTS, readOnly=false)
	public void addUser(User user) {
		
		System.out.println("User Service");
		System.out.println(user.getU_ID());
		System.out.println(user.getUsername());
		System.out.println(user.getPhonenum());
		System.out.println(user.getEmailid());
		System.out.println(user.getPassword());
		
		userDAO.addUser(user);
	}

	public List<User> getList() {
		
		return this.userDAO.getList();
	}

}
