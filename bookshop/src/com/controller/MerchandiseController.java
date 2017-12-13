package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Merchandise;
import com.bean.User;
import com.service.MerchandiseService;

@Controller
public class MerchandiseController {
	@Autowired
	private MerchandiseService merchandiseService;
	@RequestMapping("/Merchandise")
	public String getAll(Model m,HttpSession session,String pI) {
		int pageIndex = (int)session.getAttribute("pageIndex");
		if(pI!=null)pageIndex=Integer.parseInt(pI);
		int totalCount = merchandiseService.getTotalCount();
		int totalPage;
		if((totalCount%9)!=0) {
			totalPage = totalCount/9+1;
		}else {
			totalPage = totalCount/9;
		}
		if(pageIndex>totalPage) pageIndex = totalPage;
		List<Merchandise> list = merchandiseService.getAll(pageIndex);
		session.setAttribute("pageIndex", pageIndex);
		session.setAttribute("totalPage", totalPage);
		m.addAttribute("list", list);
		return "index";
	}
	
	@RequestMapping("/MerchandiseDetail")
	public String MerchandiseDetail(Model model,String id) {
		Merchandise merchandise = merchandiseService.getMerchandise(id);
		model.addAttribute("merchandise", merchandise);
		return "MerchandiseDetail";
	}
}
