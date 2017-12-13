package com.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bean.Merchandise;
import com.dao.MerchandiseDao;

@Service
@Transactional
public class MerchandiseService {
	@Autowired
	private MerchandiseDao merchandiseDao;
	public List<Merchandise> getAll(int pageIndex){
		List<Merchandise> list = merchandiseDao.selectAll(pageIndex);
		return list;
	}
	public Merchandise getMerchandise(String id) {
		return merchandiseDao.getMerchandise(id);
	}
	public int getTotalCount() {
		return merchandiseDao.getTotalCount();
	}
//	public void BookDetail(HttpServletRequest request, HttpServletResponse response) {
//		// TODO Auto-generated method stub
//		MerchandiseDao bookDao = new MerchandiseDao();
//		Merchandise book = bookDao.selectBook(request.getParameter("id"));
//		request.setAttribute("book", book);
//		try {
//			request.getRequestDispatcher("BookDetail.jsp").forward(request, response);
//		} catch (ServletException | IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//	public void addBook(HttpServletRequest request, HttpServletResponse response) {
//		// TODO Auto-generated method stub
//		MerchandiseDao bookDao = new MerchandiseDao();
//		bookDao.addBook(request.getParameter("bookname"), request.getParameter("author"), request.getParameter("price"), request.getParameter("imgurl"), request.getParameter("type_id"));
//		try {
//			request.getRequestDispatcher("BookAction.action?fun=select1").forward(request, response);
//		} catch (ServletException | IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//	public void add(HttpServletRequest request, HttpServletResponse response) {
//		// TODO Auto-generated method stub
//		String pageS = request.getParameter("page");
//		Integer dpage=1;
//		if(pageS!=null) {
//			dpage=Integer.parseInt(pageS);
//		}
//		Page page = new Page();
//		page.setPagecount(5);
//		MerchandiseTypeService bookTypeService = new MerchandiseTypeService();
//		List<MerchandiseType> list = bookTypeService.getBookTypes();
//		page.setTotalcount(list.size());
//		page.setTotalpage();
//		page.setDpage(dpage);
//		Integer end=dpage*page.getPagecount();
//		if(end>page.getTotalcount()) {
//			end=page.getTotalcount();
//		}
//		List<MerchandiseType> subList = list.subList((dpage-1)*page.getPagecount(), end);
//		request.setAttribute("list", subList);
//		request.setAttribute("page", page);
//		try {
//			request.getRequestDispatcher("addBook.jsp").forward(request, response);
//		} catch (ServletException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//	public void update(HttpServletRequest request) {
//		// TODO Auto-generated method stub
//		
//	}
//	
//	public void select(HttpServletRequest request,HttpServletResponse response) {
//		String pageS = request.getParameter("page");
//		Integer dpage=1;
//		if(pageS!=null) {
//			dpage=Integer.parseInt(pageS);
//		}
//		Page page = new Page();
//		page.setPagecount(9);
//		MerchandiseService bookService = new MerchandiseService();
//		List<Merchandise> list = bookService.getBooks();
//		page.setTotalcount(list.size());
//		page.setTotalpage();
//		page.setDpage(dpage);
//		Integer end=dpage*page.getPagecount();
//		if(end>page.getTotalcount()) {
//			end=page.getTotalcount();
//		}
//		List<Merchandise> subList = list.subList((dpage-1)*page.getPagecount(), end);
//		request.setAttribute("username", request.getParameter("username"));
//		request.setAttribute("password", request.getParameter("password"));
//		request.setAttribute("list", subList);
//		request.setAttribute("page", page);
//		try {
//			request.getRequestDispatcher("index.jsp").forward(request, response);
//		} catch (ServletException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//	
//	public void select1(HttpServletRequest request,HttpServletResponse response) {
//		String pageS = request.getParameter("page");
//		Integer dpage=1;
//		if(pageS!=null) {
//			dpage=Integer.parseInt(pageS);
//		}
//		Page page = new Page();
//		page.setPagecount(5);
//		MerchandiseService bookService = new MerchandiseService();
//		List<Merchandise> list = bookService.getBooks();
//		page.setTotalcount(list.size());
//		page.setTotalpage();
//		page.setDpage(dpage);
//		Integer end=dpage*page.getPagecount();
//		if(end>page.getTotalcount()) {
//			end=page.getTotalcount();
//		}
//		List<Merchandise> subList = list.subList((dpage-1)*page.getPagecount(), end);
//		request.setAttribute("list", subList);
//		request.setAttribute("page", page);
//		try {
//			request.getRequestDispatcher("bookManage.jsp").forward(request, response);
//		} catch (ServletException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//	
//	public void selectBook(HttpServletRequest request, HttpServletResponse response) {
//		// TODO Auto-generated method stub
//		MerchandiseDao bookDao = new MerchandiseDao();
//		Merchandise book = bookDao.selectBook(request.getParameter("id"));
//		request.setAttribute("book", book);
//		try {
//			request.getRequestDispatcher("reviseBook.jsp").forward(request, response);
//		} catch (ServletException | IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//	
//	public void reviseBook(HttpServletRequest request, HttpServletResponse response) {
//		// TODO Auto-generated method stub
//		MerchandiseDao bookDao = new MerchandiseDao();
//		bookDao.reviseBook(request.getParameter("id"), request.getParameter("bookname"), request.getParameter("author"), request.getParameter("price"), request.getParameter("imgurl"), request.getParameter("type_id"));
//		try {
//			request.getRequestDispatcher("BookAction.action?fun=select1").forward(request, response);
//		} catch (ServletException | IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//	
//	public void deleteBook(HttpServletRequest request, HttpServletResponse response) {
//		// TODO Auto-generated method stub
//		MerchandiseDao bookDao = new MerchandiseDao();
//		bookDao.deleteBook(request.getParameter("id"));
//		try {
//			request.getRequestDispatcher("BookAction.action?fun=select1").forward(request, response);
//		} catch (ServletException | IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
	
}
