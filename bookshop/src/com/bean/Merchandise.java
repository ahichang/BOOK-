package com.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.springframework.context.annotation.Lazy;

@Entity
@Table(name="merchandise")
public class Merchandise {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="merchandise_id")
	private Integer id;
	@Column(name="merchandise_name")
	private String name;
	@Column(name="merchandise_auth")
	private String author;
	@Column(name="merchandise_price")
	private Double price;
	@Column(name="merchandise_imgurl")
	private String imgurl;
	@ManyToMany
	@JoinTable(name="mmt",joinColumns=@JoinColumn(name="merchandise_id"),inverseJoinColumns=@JoinColumn(name="type_id"))
	@Fetch(FetchMode.JOIN)
	private Set<MerchandiseType> merchandiseTypeSet = new HashSet<MerchandiseType>();
	@OneToMany(mappedBy="user", targetEntity=Order.class,cascade=CascadeType.ALL)
	@Fetch(FetchMode.JOIN)
	private Set<Merchandise> merchandise = new HashSet<Merchandise>();
	
	public String toString() {
		String info ="<img url='" + imgurl + "' style='height:100px;width:50px'>" + "<span style='position: absolute;left: 60px;top: 15px;'>" + "商品名：" + name + "<br/>" + "作者：" + author + "<br/>" + "价格：" + price + "<br/>"+"</span>";
//		<img url="" style="height:100px;width:50px">
//	    <span style="position: absolute;left: 60px;top: 15px;">商品名：name<br>作者：author<br>价格：price<br></span>
		return info;
	}
	public Set<MerchandiseType> getMerchandiseTypeSet() {
		return merchandiseTypeSet;
	}

	public void setMerchandiseTypeSet(Set<MerchandiseType> merchandiseTypeSet) {
		this.merchandiseTypeSet = merchandiseTypeSet;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getImgurl() {
		return imgurl;
	}
	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
	
	

}
