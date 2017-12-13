package com.dao;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bean.Admin;
import com.bean.CartItem;
import com.bean.ConsigneeInfo;
import com.bean.Merchandise;
import com.bean.MerchandiseType;
import com.bean.Order;
import com.bean.OrderDetail;
import com.bean.ShoppingCart;
import com.bean.User;
@Repository
public class AdminDao {
	@Autowired
	private SessionFactory sessionFactory;
	public Admin adminEntry(String username, String password) {
		Session session = sessionFactory.getCurrentSession();
		org.hibernate.query.Query q = session.createQuery("from Admin where username= ? and password = ?");
		q.setString(0, username);
		q.setString(1, password);
		return (Admin)q.uniqueResult();
	}
	public int getTotalCount() {
		Session session = sessionFactory.getCurrentSession();
		Object u = session.createQuery("select count(*) from User").uniqueResult();
		return Integer.parseInt(String.valueOf(u));
	}
	public List<User> selectAll(int upageIndex) {
			int pageSize = 9;
			Session session = sessionFactory.getCurrentSession();
			Query q = session.createQuery("from User");
			q.setFirstResult((upageIndex-1)*pageSize);
			q.setMaxResults(pageSize);
			List<User> list = (List<User>)q.list();
			return list;
	}
	public User selectUser(String id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(User.class, Integer.parseInt(id));
	}
	public void deleteUser(String id) {
		Session session = sessionFactory.getCurrentSession();
		User user = session.get(User.class, Integer.parseInt(id));
		session.delete(user);
	}
	public void reviseUser(String id, String username, String password, String email, String telephone,
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
	public int getmTotalCount() {
		Session session = sessionFactory.getCurrentSession();
		Object u = session.createQuery("select count(*) from Merchandise").uniqueResult();
		return Integer.parseInt(String.valueOf(u));
	}
	public List<Merchandise> selectmAll(int mpageIndex) {
		int pageSize = 9;
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Merchandise");
		q.setFirstResult((mpageIndex-1)*pageSize);
		q.setMaxResults(pageSize);
		List<Merchandise> list = (List<Merchandise>)q.list();
		return list;
	}
	public Merchandise getMerchandise(String id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Merchandise.class, Integer.parseInt(id));
	}
	public List<MerchandiseType> getMerchandiseType() {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from MerchandiseType");
		return (List<MerchandiseType>)q.list();
	}
	public void reviseMerchandise(String id, String name, String author, String price, String imgurl) {
		int i = Integer.parseInt(id);
		Session session = sessionFactory.getCurrentSession();
		Merchandise m = session.get(Merchandise.class, i);
		m.setAuthor(author);
		m.setImgurl(imgurl);
		m.setName(name);
		m.setPrice(Double.parseDouble(price));
		session.update(m);
	}
	public void deleteMerchandiseType(String id, String typeId) {
		int i = Integer.parseInt(id);
		Session session = sessionFactory.getCurrentSession();
		Merchandise m = session.get(Merchandise.class, i);
		Set<MerchandiseType> mts = m.getMerchandiseTypeSet();
		Iterator<MerchandiseType> it = mts.iterator();
		while(it.hasNext()) {
			MerchandiseType n = it.next();
			if(n.getId().equals(Integer.parseInt(typeId))) {
				it.remove();
			}
		}
		m.setMerchandiseTypeSet(mts);
		session.update(m);
	}
	public void addMerchandiseType(String id, String type_id) {
		int i = Integer.parseInt(id);
		Session session = sessionFactory.getCurrentSession();
		Merchandise m = session.get(Merchandise.class, i);
		Set<MerchandiseType> mts = m.getMerchandiseTypeSet();
		String[] s = type_id.split("\\*");
		for(int q=0;q<s.length;q++) {
			MerchandiseType mt = session.get(MerchandiseType.class, Integer.parseInt(s[q]));
			mts.add(mt);
		}
		m.setMerchandiseTypeSet(mts);
		session.update(m);
	}
	public void deleteMerchandise(String id) {
		int i = Integer.parseInt(id);
		Session session = sessionFactory.getCurrentSession();
		Merchandise m = session.get(Merchandise.class, i);
		session.delete(m);
	}
	public void appendMerchandise(String name, String author, String price, String imgurl, String type_id) {
		Session session = sessionFactory.getCurrentSession();
		Merchandise m = new Merchandise();
		m.setAuthor(author);
		m.setImgurl(imgurl);
		m.setName(name);
		m.setPrice(Double.parseDouble(price));
		Set<MerchandiseType> merchandiseTypeSet = new HashSet<MerchandiseType>();
		String[] s = type_id.split("\\*");
		for(int i=0;i<s.length;i++) {
			MerchandiseType mt = session.get(MerchandiseType.class, Integer.parseInt(s[i]));
			merchandiseTypeSet.add(mt);
		}
		m.setMerchandiseTypeSet(merchandiseTypeSet);
		session.save(m);
	}
	public int getmtTotalCount() {
		Session session = sessionFactory.getCurrentSession();
		Object u = session.createQuery("select count(*) from MerchandiseType").uniqueResult();
		return Integer.parseInt(String.valueOf(u));
	}
	public List<MerchandiseType> selectmtAll(int mtpageIndex) {
		int pageSize = 9;
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from MerchandiseType");
		q.setFirstResult((mtpageIndex-1)*pageSize);
		q.setMaxResults(pageSize);
		List<MerchandiseType> list = (List<MerchandiseType>)q.list();
		return list;
	}
	public void appendMerchandiseType(String name) {
		Session session = sessionFactory.getCurrentSession();
		MerchandiseType m = new MerchandiseType();
		m.setName(name);
		session.save(m);
	}
	public MerchandiseType getMerchandiseType(String id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(MerchandiseType.class, Integer.parseInt(id));
	}
	public void reviseMerchandiseType(String id, String name) {
		int i = Integer.parseInt(id);
		Session session = sessionFactory.getCurrentSession();
		MerchandiseType m = session.get(MerchandiseType.class, i);
		m.setName(name);
		session.update(m);
	}
	public void delMerchandiseType(String id) {
		int i = Integer.parseInt(id);
		Session session = sessionFactory.getCurrentSession();
		MerchandiseType m = session.get(MerchandiseType.class, i);
		session.delete(m);
	}
	public int getaTotalCount() {
		Session session = sessionFactory.getCurrentSession();
		Object u = session.createQuery("select count(*) from Admin").uniqueResult();
		return Integer.parseInt(String.valueOf(u));
	}
	public List<Admin> selectaAll(int apageIndex) {
		int pageSize = 9;
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Admin");
		q.setFirstResult((apageIndex-1)*pageSize);
		q.setMaxResults(pageSize);
		List<Admin> list = (List<Admin>)q.list();
		return list;
	}
	public void addAdmin(String username, String password, String realname) {
		Session session = sessionFactory.getCurrentSession();
		Admin a = new Admin();
		a.setPassword(password);
		a.setRealname(realname);
		a.setUsername(username);
		session.save(a);
	}
	public Admin getAdmin(String id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Admin.class, Integer.parseInt(id));
	}
	public void reviseAdmin(String id, String username, String password, String realname) {
		Session session = sessionFactory.getCurrentSession();
		Admin a = session.get(Admin.class, Integer.parseInt(id));
		a.setUsername(username);
		a.setRealname(realname);
		a.setPassword(password);
		session.save(a);
	}
	public void delAdmin(String id) {
		Session session = sessionFactory.getCurrentSession();
		Admin a = session.get(Admin.class, Integer.parseInt(id));
		session.delete(a);
	}
	public int getweTotalCount() {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("select count(*) from Order where state=?");
		q.setString(0, "未支付");
		Object u = q.uniqueResult();
		return Integer.parseInt(String.valueOf(u));
	}
	public List<Order> getweAll(int wepageIndex) {
		int pageSize = 9;
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Order where state=?");
		q.setString(0, "未支付");
		q.setFirstResult((wepageIndex-1)*pageSize);
		q.setMaxResults(pageSize);
		List<Order> list = (List<Order>)q.list();
		return list;
	}
	public int getyzTotalCount() {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("select count(*) from Order where state=?");
		q.setString(0, "已支付");
		Object u = q.uniqueResult();
		return Integer.parseInt(String.valueOf(u));
	}
	public List<Order> getyzAll(int yzpageIndex) {
		int pageSize = 9;
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Order where state=?");
		q.setString(0, "已支付");
		q.setFirstResult((yzpageIndex-1)*pageSize);
		q.setMaxResults(pageSize);
		List<Order> list = (List<Order>)q.list();
		return list;
	}
	public int getywTotalCount() {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("select count(*) from Order where state=?");
		q.setString(0, "已完成");
		Object u = q.uniqueResult();
		return Integer.parseInt(String.valueOf(u));
	}
	public List<Order> getywAll(int ywpageIndex) {
		int pageSize = 9;
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Order where state=?");
		q.setString(0, "已完成");
		q.setFirstResult((ywpageIndex-1)*pageSize);
		q.setMaxResults(pageSize);
		List<Order> list = (List<Order>)q.list();
		return list;
	}
	public void delOrder(String id) {
		Session session = sessionFactory.getCurrentSession();
		Order a = session.get(Order.class, Integer.parseInt(id));
		session.delete(a);
	}
	public void queRenOrder(String id) {
		Session session = sessionFactory.getCurrentSession();
		Order a = session.get(Order.class, Integer.parseInt(id));
		a.setState("已完成");
		session.save(a);
	}
	public OrderDetail selectOrderDetail(String id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(OrderDetail.class, Integer.parseInt(id));
	}
	public int getmweTotalCount(int id) {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("select count(*) from Order where state=? and user.id=?");
		q.setString(0, "已完成");
		q.setInteger(1, id);
		Object u = q.uniqueResult();
		return Integer.parseInt(String.valueOf(u));
	}
	public List<Order> getmweAll(int id, int mwepageIndex) {
		int pageSize = 9;
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Order where state=? and user.id=?");
		q.setString(0, "未支付");
		q.setInteger(1, id);
		q.setFirstResult((mwepageIndex-1)*pageSize);
		q.setMaxResults(pageSize);
		List<Order> list = (List<Order>)q.list();
		return list;
	}
	public int getmyzTotalCount(int id) {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("select count(*) from Order where state=? and user.id=?");
		q.setString(0, "已支付");
		q.setInteger(1, id);
		Object u = q.uniqueResult();
		return Integer.parseInt(String.valueOf(u));
	}
	public List<Order> getmyzAll(int id, int myzpageIndex) {
		int pageSize = 9;
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Order where state=? and user.id=?");
		q.setString(0, "已支付");
		q.setInteger(1, id);
		q.setFirstResult((myzpageIndex-1)*pageSize);
		q.setMaxResults(pageSize);
		List<Order> list = (List<Order>)q.list();
		return list;
	}
	public int getmywTotalCount(int id) {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("select count(*) from Order where state=? and user.id=?");
		q.setString(0, "已完成");
		q.setInteger(1, id);
		Object u = q.uniqueResult();
		return Integer.parseInt(String.valueOf(u));
	}
	public List<Order> getmywAll(int id, int mywpageIndex) {
		int pageSize = 9;
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Order where state=? and user.id=?");
		q.setString(0, "已完成");
		q.setInteger(1, id);
		q.setFirstResult((mywpageIndex-1)*pageSize);
		q.setMaxResults(pageSize);
		List<Order> list = (List<Order>)q.list();
		return list;
	}
	public void payMyOrder(String id) {
		Session session = sessionFactory.getCurrentSession();
		Order a = session.get(Order.class, Integer.parseInt(id));
		a.setState("已支付");
		session.save(a);
	}
	public void buyMerchandise(User user,String id) {
		Session session = sessionFactory.getCurrentSession();
		Merchandise m = session.get(Merchandise.class, Integer.parseInt(id));
		User u = session.get(User.class, user.getId());
		ShoppingCart cart = u.getShoppingCart();
		CartItem c=null;
		if(cart==null)cart = new ShoppingCart();
		cart.setUser(u);
		Set<CartItem> cs = cart.getCartItemSet();
		Iterator<CartItem> it = cs.iterator();
		boolean flag=false;
		while(it.hasNext()) {
			CartItem n = it.next();
			if(n.getMerchandise().getId().equals(m.getId())) {
				n.setCount(n.getCount()+1);
				flag=true;
			}
		}
		if(!flag) {
			c = new CartItem();
			c.setMerchandise(m);
			c.setCount(1);
			cs.add(c);
		}
		cart.setCartItemSet(cs);
		u.setShoppingCart(cart);
		session.save(u);
		session.save(cart);
		if(c!=null) {
			c.setShoppingCart(cart);
			session.save(c);
		}
	}
	public ShoppingCart selectCart(User user) {
		Session session = sessionFactory.getCurrentSession();
		User u = session.get(User.class, user.getId());
		return u.getShoppingCart();
	}

	public void reviseCount(User user, String id, String value) {
		Session session = sessionFactory.getCurrentSession();
		CartItem c = session.get(CartItem.class, Integer.parseInt(id));
		if (value.equals("0")) {
			if (c.getCount() > 1)
				c.setCount(c.getCount() - 1);
		} else if (value.equals("1")) {
			c.setCount(c.getCount() + 1);
		}
		session.save(c);
	}
	public void deleteCartItem(User user, String id) {
		Session session = sessionFactory.getCurrentSession();
		User u = session.get(User.class, user.getId());
		ShoppingCart shoppingCart = u.getShoppingCart();
		Set<CartItem> cartItemSet = shoppingCart.getCartItemSet();
		Iterator<CartItem> iterator = cartItemSet.iterator();
		while(iterator.hasNext()) {
			CartItem next = iterator.next();
			if(next.getId()==Integer.parseInt(id))iterator.remove();
		}
		shoppingCart.setCartItemSet(cartItemSet);
		u.setShoppingCart(shoppingCart);
		CartItem cartItem = session.get(CartItem.class, Integer.parseInt(id));
		session.delete(cartItem);
		session.saveOrUpdate(shoppingCart);
		session.saveOrUpdate(u);
	}
	public int shengchengOrder(User user, String name, String phone, String address) {
		java.util.Date time = new java.util.Date();
		long posttime = time.getTime();
		java.sql.Date date = new java.sql.Date(posttime);
		Session session = sessionFactory.getCurrentSession();
		User u = session.get(User.class, user.getId());
		ShoppingCart shoppingCart = u.getShoppingCart();
		Set<CartItem> cartItemSet = shoppingCart.getCartItemSet();
		Order o = new Order();
		OrderDetail od = new OrderDetail();
		ConsigneeInfo consigneeInfo = new ConsigneeInfo();
		consigneeInfo.setAddress(address);
		consigneeInfo.setConsigneeName(name);
		consigneeInfo.setPhoneNum(phone);
		od.setCartItemSet(cartItemSet);
		od.setConsigneeInfo(consigneeInfo);
		od.setOrder(o);
		o.setOrderDetail(od);
		o.setUser(u);
		o.setState("未支付");
		o.setTime(date);
		shoppingCart.setCartItemSet(null);
		Iterator<CartItem> iterator = cartItemSet.iterator();
		while(iterator.hasNext()) {
			CartItem next = iterator.next();
			next.setShoppingCart(null);
			next.setOrderDetail(od);
			session.save(next);
		}
		u.setShoppingCart(shoppingCart);
		Set<Order> orderSet = u.getOrderSet();
		if(orderSet==null) {
			orderSet = new HashSet<Order>();
		}
		orderSet.add(o);
		u.setOrderSet(orderSet);
		session.saveOrUpdate(o);
		session.saveOrUpdate(od);
		session.saveOrUpdate(shoppingCart);
		session.save(u);
		return o.getOrder_id();
	}
}
