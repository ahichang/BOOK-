package com.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.Admin;
import com.bean.Merchandise;
import com.bean.MerchandiseType;
import com.bean.Order;
import com.bean.OrderDetail;
import com.bean.ShoppingCart;
import com.bean.User;
import com.dao.AdminDao;

@Service
@Transactional
public class AdminService {
	@Autowired
	private AdminDao adminDao;
	public Admin adminEntry(String username, String password) {
		return adminDao.adminEntry( username,  password);
	}
	public int getTotalCount() {
		return adminDao.getTotalCount();
	}
	public List<User> getAll(int upageIndex) {
		List<User> list = adminDao.selectAll(upageIndex);
		return list;
	}
	public User selectUser(String id) {
		User u = adminDao.selectUser( id);
		return u;
	}
	public void deleteUser(String id) {
		adminDao.deleteUser(id);
	}
	public void reviseUser(String id, String username, String password, String email, String telephone,
			String address) {
		adminDao.reviseUser(id,username,password,email,telephone,address);
	}
	public int getmTotalCount() {
		return adminDao.getmTotalCount();
	}
	public List<Merchandise> getmAll(int mpageIndex) {
		List<Merchandise> list = adminDao.selectmAll(mpageIndex);
		return list;
	}
	public Merchandise getMerchandise(String id) {
		return adminDao.getMerchandise( id);
	}
	public List<MerchandiseType> getMerchandiseType() {
		return adminDao.getMerchandiseType();
	}
	public void reviseMerchandise(String id, String name, String author, String price, String imgurl) {
		adminDao.reviseMerchandise(id,name,author,price,imgurl);
	}
	public void deleteMerchandiseType(String id, String typeId) {
		adminDao.deleteMerchandiseType( id,  typeId);
	}
	public void addMerchandiseType(String id, String type_id) {
		adminDao.addMerchandiseType( id,  type_id);
	}
	public void deleteMerchandise(String id) {
		adminDao.deleteMerchandise( id);
	}
	public void appendMerchandise(String name, String author, String price, String imgurl, String type_id) {
		adminDao.appendMerchandise( name,  author,  price,  imgurl,  type_id);
	}
	public int getmtTotalCount() {
		return adminDao.getmtTotalCount();
	}
	public List<MerchandiseType> getmtAll(int mtpageIndex) {
		List<MerchandiseType> list = adminDao.selectmtAll(mtpageIndex);
		return list;
	}
	public void appendMerchandiseType(String name) {
		adminDao.appendMerchandiseType( name);
	}
	public MerchandiseType getMerchandiseType(String id) {
		return adminDao.getMerchandiseType( id);
	}
	public void reviseMerchandiseType(String id, String name) {
		adminDao.reviseMerchandiseType(id,name);
	}
	public void delMerchandiseType(String id) {
		adminDao.delMerchandiseType( id);
	}
	public int getaTotalCount() {
		return adminDao.getaTotalCount();
	}
	public List<Admin> getaAll(int apageIndex) {
		List<Admin> list = adminDao.selectaAll(apageIndex);
		return list;
	}
	public void addAdmin(String username, String password, String realname) {
		adminDao.addAdmin( username,  password,  realname);
	}
	public Admin getAdmin(String id) {
		return adminDao.getAdmin( id);
	}
	public void reviseAdmin(String id, String username, String password, String realname) {
		adminDao.reviseAdmin( id,  username,  password,  realname);
	}
	public void delAdmin(String id) {
		adminDao.delAdmin( id);
	}
	public int getweTotalCount() {
		return adminDao.getweTotalCount();
	}
	public List<Order> getweAll(int wepageIndex) {
		List<Order> list = adminDao.getweAll(wepageIndex);
		return list;
	}
	public int getyzTotalCount() {
		return adminDao.getyzTotalCount();
	}
	public List<Order> getyzAll(int yzpageIndex) {
		List<Order> list = adminDao.getyzAll(yzpageIndex);
		return list;
	}
	public int getywTotalCount() {
		return adminDao.getywTotalCount();
	}
	public List<Order> getywAll(int ywpageIndex) {
		List<Order> list = adminDao.getywAll(ywpageIndex);
		return list;
	}
	public void delOrder(String id) {
		adminDao.delOrder( id);
	}
	public void queRenOrder(String id) {
		adminDao.queRenOrder( id);
	}
	public OrderDetail selectOrderDetail(String id) {
		return adminDao.selectOrderDetail(id);
	}
	public int getmweTotalCount(int id) {
		return adminDao.getmweTotalCount(id);
	}
	public List<Order> getmweAll(int id, int mwepageIndex) {
		List<Order> list = adminDao.getmweAll(id,mwepageIndex);
		return list;
	}
	public int getmyzTotalCount(int id) {
		return adminDao.getmyzTotalCount(id);
	}
	public List<Order> getmyzAll(int id, int myzpageIndex) {
		List<Order> list = adminDao.getmyzAll(id,myzpageIndex);
		return list;
	}
	public int getmywTotalCount(int id) {
		return adminDao.getmywTotalCount(id);
	}
	public List<Order> getmywAll(int id, int mywpageIndex) {
		List<Order> list = adminDao.getmywAll(id,mywpageIndex);
		return list;
	}
	public void payMyOrder(String id) {
		adminDao.payMyOrder( id);
	}
	public void buyMerchandise(User user,String id) {
		adminDao.buyMerchandise(user, id);
		
	}
	public ShoppingCart selectCart(User user) {
		return adminDao.selectCart(user);
	}
	public void reviseCount(User user, String id, String value) {
		adminDao.reviseCount(user,id,value);
	}
	public void deleteCartItem(User user, String id) {
		adminDao.deleteCartItem(user,id);
	}
	public int shengchengOrder(User user, String name, String phone, String address) {
		return adminDao.shengchengOrder(user,  name,  phone,  address);
	}
}
