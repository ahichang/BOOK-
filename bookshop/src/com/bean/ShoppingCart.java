package com.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;
@Entity
@Table(name="shoppingcart")
public class ShoppingCart {
	@Id
	@GeneratedValue(generator="foreign")
	@GenericGenerator(name="foreign",strategy="foreign",parameters={@Parameter(name="property",value="user")})
	@Column(name="id")
	private int id;
	@OneToMany(mappedBy="shoppingCart", targetEntity=CartItem.class,cascade=CascadeType.ALL)
	@Fetch(FetchMode.JOIN)
	private Set<CartItem> cartItemSet=new HashSet<CartItem>();
	@OneToOne(mappedBy="shoppingCart")
	private User user;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Set<CartItem> getCartItemSet() {
		return cartItemSet;
	}
	public void setCartItemSet(Set<CartItem> cartItemSet) {
		this.cartItemSet = cartItemSet;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
