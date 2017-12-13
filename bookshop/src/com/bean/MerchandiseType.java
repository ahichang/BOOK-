package com.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
@Entity
@Table(name="merchandise_type")
public class MerchandiseType {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="type_id")
	private Integer id;
	@Column(name="type_name")
	private String name;
	@ManyToMany(mappedBy="merchandiseTypeSet")
	private Set<Merchandise> merchandiseSet = new HashSet<Merchandise>();
	
	
	public Set<Merchandise> getMerchandiseSet() {
		return merchandiseSet;
	}
	public void setMerchandiseSet(Set<Merchandise> merchandiseSet) {
		this.merchandiseSet = merchandiseSet;
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
	

}
