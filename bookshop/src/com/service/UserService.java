package com.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.User;
import com.dao.UserDao;

@Service
@Transactional
public class UserService {
	@Autowired
	private UserDao userDao;
	public User userEntry(String username,String password) {
		return (User)userDao.UserLogin(username, password);
	}
	public void xiugaiUser(String id, String username, String password, String email, String telephone,
			String address) {
		userDao.xiugaiUser(id,username,password,email,telephone,address);
	}
	public void addUser(String username, String password, String email, String telephone, String address) {
		userDao.addUser( username,  password,  email,  telephone,  address);
	}
}
