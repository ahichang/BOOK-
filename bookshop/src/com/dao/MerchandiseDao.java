package com.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bean.Merchandise;

@Repository
public class MerchandiseDao {
	@Autowired
	private SessionFactory sessionFactory;
	public List<Merchandise> selectAll(int pageIndex){
		int pageSize = 9;
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from Merchandise");
		q.setFirstResult((pageIndex-1)*pageSize);
		q.setMaxResults(pageSize);
		List<Merchandise> list = (List<Merchandise>)q.list();
		return list;
	}
	public Merchandise getMerchandise(String id) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Merchandise where id=?");
		query.setParameter(0, Integer.parseInt(id));
		//session.get(Merchandise.class, Integer.parseInt(id))
		List<Merchandise> list = query.list();
		return list.get(0);
	}
	public int getTotalCount() {
		Session session = sessionFactory.getCurrentSession();
		Object u = session.createQuery("select count(*) from Merchandise").uniqueResult();
		return Integer.parseInt(String.valueOf(u));
	}

//	public Merchandise selectBook(String id){
//		Session session = sessionFactory.getCurrentSession();
//		return session.get(Merchandise.class, new Integer(id));
//	}
//	
//	public void reviseBook(Merchandise book){
//		Session session = sessionFactory.getCurrentSession();
//		session.update(book);
//	}
//	
//	public void deleteBook(Merchandise book) {
//		Session session = sessionFactory.getCurrentSession();
//		session.delete(book);
//	}
//	
//	public void addBook(String bookname, String author, String price, String imgurl, String type_id) {
//		Merchandise book = new Merchandise();
//		MerchandiseType bookType = new MerchandiseType();
//		book.setAuthor(author);
//		book.setImgurl(imgurl);
//		book.setName(bookname);
//		book.setPrice(new Double(price));
//		book.setBookType(bookType);
//		
//		Session session = sessionFactory.getCurrentSession();
//		session.save(book);
//	}
}
