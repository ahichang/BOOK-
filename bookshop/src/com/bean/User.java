package com.bean;

import java.sql.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
@Entity
@Table(name="users")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="user_id")
	private int id;
	@Column(name="user_username")
	private String username;
	@Column(name="user_passwd")
	private String password;
	@Column(name="user_email")
	private String email;
	@Column(name="user_telephone")
	private String telephone;
	@Column(name="user_address")
	private String address;
	@Column(name="posttime")
	private Date posttime;
	@OneToMany(mappedBy="user", targetEntity=Order.class,cascade=CascadeType.ALL)
	private Set<Order> orderSet;
	@OneToOne(cascade=CascadeType.ALL)
	@PrimaryKeyJoinColumn(name="id")
	private ShoppingCart shoppingCart;
	
	
	public ShoppingCart getShoppingCart() {
		return shoppingCart;
	}
	public void setShoppingCart(ShoppingCart shoppingCart) {
		this.shoppingCart = shoppingCart;
	}
	public Set<Order> getOrderSet() {
		return orderSet;
	}
	public void setOrderSet(Set<Order> orderSet) {
		this.orderSet = orderSet;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getPosttime() {
		return posttime;
	}
	public void setPosttime(Date posttime) {
		this.posttime = posttime;
	}
	
}
