package com.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embedded;
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
@Table(name="order_detail")
public class OrderDetail {
	@Id
	@GeneratedValue(generator="foreign")
	@GenericGenerator(name="foreign",strategy="foreign",parameters={@Parameter(name="property",value="order")})
	@Column(name="order_detail_id")
	private int order_detail_id;
	@OneToOne(mappedBy="orderDetail")
	private Order order;
	@Embedded
	@AttributeOverrides(value={@AttributeOverride(name = "consigneeName",column = @Column(name="consigneeName")),@AttributeOverride(name = "phoneNum",column = @Column(name="consigneePhoneNum")),@AttributeOverride(name = "address",column = @Column(name="consigneeAdress"))})
	private ConsigneeInfo consigneeInfo;
	@OneToMany(mappedBy="orderDetail", targetEntity=CartItem.class,cascade=CascadeType.ALL)
	@Fetch(FetchMode.JOIN)
	private Set<CartItem> cartItemSet=new HashSet<CartItem>();
	
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public int getOrder_detail_id() {
		return order_detail_id;
	}
	public void setOrder_detail_id(int order_detail_id) {
		this.order_detail_id = order_detail_id;
	}
	public ConsigneeInfo getConsigneeInfo() {
		return consigneeInfo;
	}
	public void setConsigneeInfo(ConsigneeInfo consigneeInfo) {
		this.consigneeInfo = consigneeInfo;
	}
	public Set<CartItem> getCartItemSet() {
		return cartItemSet;
	}
	public void setCartItemSet(Set<CartItem> cartItemSet) {
		this.cartItemSet = cartItemSet;
	}
	
}
