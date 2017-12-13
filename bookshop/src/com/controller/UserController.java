package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.User;
import com.service.UserService;
@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping("/userEntry")
	public String userEntry(Model model,String username, String password,HttpSession session) {
		session.removeAttribute("user");
		session.removeAttribute("pageIndex");
		session.removeAttribute("totalPage");
		User u = userService.userEntry(username, password);
		if (u != null) {
			session.setAttribute("user", u);
			session.setAttribute("pageIndex", 1);
			return "redirect:Merchandise.do";
		} else {
			model.addAttribute("errorMessage", "√ª”– ‰»Î’À∫≈ªÚ√‹¬Î?");
			model.addAttribute("username", username);
			return "userLogin";
		}
	}
	@RequestMapping("/xiugaiUser")
	public String xiugaiUser(String id,String username,String password,String email,String telephone,String address,HttpSession session) {
		userService.xiugaiUser(id,username,password,email,telephone,address);
		session.removeAttribute("user");
		session.removeAttribute("pageIndex");
		return "/userEntry.do?username = "+ username +" & password = " + password + " ";
	}
	@RequestMapping("/userLogout")
	public String userLogout(HttpSession session) {
		session.removeAttribute("user");
		session.removeAttribute("pageIndex");
		return "userLogin";
	}
	@RequestMapping("/addUser")
	public String addUser(Model model,String username,String password,String email,String telephone,String address){
		userService.addUser(username,password,email,telephone,address);
		model.addAttribute("errorMessage", "Ê≥®ÂÜåÊàêÂäüÔºåËØ∑ÁôªÂΩïÔº?");
		return "userLogin";
	}
}
