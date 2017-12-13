package com.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bean.User;
@Repository
public class UserDao {
	@Autowired
	private SessionFactory sessionFactory;
	public User UserLogin(String username,String password) {
		Session session = sessionFactory.getCurrentSession();
		org.hibernate.query.Query q = session.createQuery("from User where username= ? and password = ?");
		q.setString(0, username);
		q.setString(1, password);
		return (User)q.uniqueResult();
	}
	public void xiugaiUser(String id, String username, String password, String email, String telephone,
			String address) {
		int i = Integer.parseInt(id);
		Session session = sessionFactory.getCurrentSession();
		User user = session.get(User.class, i);
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		user.setTelephone(telephone);
		user.setAddress(address);
		session.update(user);
	}
	public void addUser(String username, String password, String email, String telephone, String address) {
		java.util.Date time = new java.util.Date();
		long posttime = time.getTime();
		java.sql.Date date = new java.sql.Date(posttime);
		Session session = sessionFactory.getCurrentSession();
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		user.setTelephone(telephone);
		user.setAddress(address);
		user.setPosttime(date);
		session.save(user);
	}
}
