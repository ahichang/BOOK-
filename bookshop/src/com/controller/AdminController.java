package com.controller;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Admin;
import com.bean.Merchandise;
import com.bean.MerchandiseType;
import com.bean.Order;
import com.bean.OrderDetail;
import com.bean.ShoppingCart;
import com.bean.User;
import com.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	@RequestMapping("/adminEntry")
	public String adminEntry(Model model,String username, String password,HttpSession session) {
		session.removeAttribute("admin");
		Admin a = adminService.adminEntry(username, password);
		if (a != null) {
			session.setAttribute("admin", a);
			return "adminPage";
		} else {
			model.addAttribute("errorMessage", "管理员不存在或密码错误！");
			model.addAttribute("username", username);
			return "adminPageLogin";
		}
	}
	@RequestMapping("/adminLogout")
	public String adminLogout(HttpSession session) {
		session.removeAttribute("admin");
		return "userLogin";
	}
	@RequestMapping("/userManage")
	public String getAll(Model m,HttpSession session,String upI) {
		int upageIndex;
		Object u = session.getAttribute("upageIndex");
		if(u==null)upageIndex=1;
		else upageIndex = (int)u;
		if(upI!=null)upageIndex=Integer.parseInt(upI);
		int utotalCount = adminService.getTotalCount();
		int utotalPage;
		if((utotalCount%9)!=0) {
			utotalPage = utotalCount/9+1;
		}else {
			utotalPage = utotalCount/9;
		}
		if(upageIndex>utotalPage) upageIndex = utotalPage;
		List<User> list = adminService.getAll(upageIndex);
		session.setAttribute("upageIndex", upageIndex);
		session.setAttribute("utotalPage", utotalPage);
		m.addAttribute("list", list);
		return "usersManage";
	}
	@RequestMapping("/selectUser")
	public String selectUser(Model model,String id) {
		User u = adminService.selectUser(id);
		model.addAttribute("user", u);
		return "reviseUser";
	}
	@RequestMapping("/reviseUser")
	public String reviseUser(String id,String username,String password,String email,String telephone,String address) {
		adminService.reviseUser( id, username, password, email, telephone, address);
		return "redirect:userManage.do";
	}
	@RequestMapping("/deleteUser")
	public String deleteUser(String id) {
		adminService.deleteUser(id);
		return "redirect:userManage.do";
	}
	@RequestMapping("/merchandiseManage")
	public String merchandiseManage(Model m,HttpSession session,String mpI) {
		Object mi = session.getAttribute("mpageIndex");
		int mpageIndex = 1;
		if(mi!=null)mpageIndex=(int)mi;
		if(mpI!=null)mpageIndex=Integer.parseInt(mpI);
		int mtotalCount = adminService.getmTotalCount();
		int mtotalPage;
		if((mtotalCount%9)!=0) {
			mtotalPage = mtotalCount/9+1;
		}else {
			mtotalPage = mtotalCount/9;
		}
		if(mpageIndex>mtotalPage) mpageIndex = mtotalPage;
		List<Merchandise> list = adminService.getmAll(mpageIndex);
		session.setAttribute("mpageIndex", mpageIndex);
		session.setAttribute("mtotalPage", mtotalPage);
		m.addAttribute("list", list);
		return "merchandiseManage";
	}
	@RequestMapping("/getMerchandise")
	public String getMerchandise(Model model,String id) {
		Merchandise m = adminService.getMerchandise( id);
		List<MerchandiseType> list = adminService.getMerchandiseType();
		model.addAttribute("merchandise", m);
		model.addAttribute("list", list);
		return "reviseMerchandise";
	}
	@RequestMapping("/reviseMerchandise")
	public String reviseMerchandise(String id,String name,String author,String price,String imgurl) {
		adminService.reviseMerchandise( id, name, author, price, imgurl);
		return "redirect:merchandiseManage.do";
	}
	@RequestMapping("/deleteMerchandiseType")
	public String deleteMerchandiseType(String id,String typeId) {
		adminService.deleteMerchandiseType(id,typeId);
		return "redirect:merchandiseManage.do";
	}
	@RequestMapping("/addMerchandiseType")
	public String addMerchandiseType(String id,String type_id) {
		adminService.addMerchandiseType( id, type_id);
		return "redirect:merchandiseManage.do";
	}
	@RequestMapping("/deleteMerchandise")
	public String deleteMerchandise(String id) {
		adminService.deleteMerchandise( id);
		return "redirect:merchandiseManage.do";
	}
	@RequestMapping("/addMerchandise")
	public String addMerchandise(Model model) {
		List<MerchandiseType> list = adminService.getMerchandiseType();
		model.addAttribute("list", list);
		return "addMerchandise";
	}
	@RequestMapping("/appendMerchandise")
	public String appendMerchandise(String name,String author,String price,String imgurl,String type_id) {
		adminService.appendMerchandise( name, author, price, imgurl, type_id);
		return "redirect:merchandiseManage.do";
	}
	@RequestMapping("/merchandiseTypeManage")
	public String merchandiseTypeManage(Model m,HttpSession session,String mtpI) {
		Object mti = session.getAttribute("mtpageIndex");
		int mtpageIndex = 1;
		if(mti!=null)mtpageIndex=(int)mti;
		if(mtpI!=null)mtpageIndex=Integer.parseInt(mtpI);
		int mttotalCount = adminService.getmtTotalCount();
		int mttotalPage;
		if((mttotalCount%9)!=0) {
			mttotalPage = mttotalCount/9+1;
		}else {
			mttotalPage = mttotalCount/9;
		}
		if(mtpageIndex>mttotalPage) mtpageIndex = mttotalPage;
		List<MerchandiseType> list = adminService.getmtAll(mtpageIndex);
		session.setAttribute("mtpageIndex", mtpageIndex);
		session.setAttribute("mttotalPage", mttotalPage);
		m.addAttribute("list", list);
		return "merchandiseTypeManage";
	}
	@RequestMapping("/appendMerchandiseType")
	public String appendMerchandiseType(String name) {
		adminService.appendMerchandiseType( name);
		return "redirect:merchandiseTypeManage.do";
	}
	@RequestMapping("/getMerchandiseType")
	public String getMerchandiseType(Model model,String id) {
		MerchandiseType m = adminService.getMerchandiseType( id);
		model.addAttribute("MerchandiseType", m);
		return "reviseMerchandiseType";
	}
	@RequestMapping("/reviseMerchandiseType")
	public String reviseMerchandiseType(String id,String name) {
		adminService.reviseMerchandiseType( id, name);
		return "redirect:merchandiseTypeManage.do";
	}
	@RequestMapping("/delMerchandiseType")
	public String delMerchandiseType(String id) {
		adminService.delMerchandiseType( id);
		return "redirect:merchandiseTypeManage.do";
	}
	@RequestMapping("/adminManage")
	public String adminManage(Model m,HttpSession session,String apI) {
		int apageIndex;
		Object u = session.getAttribute("apageIndex");
		if(u==null)apageIndex=1;
		else apageIndex = (int)u;
		if(apI!=null)apageIndex=Integer.parseInt(apI);
		int atotalCount = adminService.getaTotalCount();
		int atotalPage;
		if((atotalCount%9)!=0) {
			atotalPage = atotalCount/9+1;
		}else {
			atotalPage = atotalCount/9;
		}
		if(apageIndex>atotalPage) apageIndex = atotalPage;
		List<Admin> list = adminService.getaAll(apageIndex);
		session.setAttribute("apageIndex", apageIndex);
		session.setAttribute("atotalPage", atotalPage);
		m.addAttribute("list", list);
		return "adminManage";
	}
	@RequestMapping("/addAdmin")
	public String addAdmin(String username,String password,String realname){
		adminService.addAdmin(username,password,realname);
		return "redirect:adminManage.do";
	}
	@RequestMapping("/getAdmin")
	public String getAdmin(Model m,String id) {
		Admin a = adminService.getAdmin( id);
		m.addAttribute("admin", a);
		return "reviseAdmin";
	}
	@RequestMapping("/reviseAdmin")
	public String reviseAdmin(String id,String username,String password,String realname) {
		adminService.reviseAdmin( id, username, password, realname);
		return "redirect:adminManage.do";
	}
	@RequestMapping("/delAdmin")
	public String delAdmin(String id) {
		adminService.delAdmin( id);
		return "redirect:adminManage.do";
	}
	@RequestMapping("/selectOrder")
	public String selectOrder(Model m,HttpSession session,String wepI,String yzpI,String ywpI) {
		//weizhifulist
		Object we = session.getAttribute("wepageIndex");
		int wepageIndex = 1;
		if(we!=null)wepageIndex=(int)we;
		if(wepI!=null)wepageIndex=Integer.parseInt(wepI);
		int wetotalCount = adminService.getweTotalCount();
		int wetotalPage;
		if((wetotalCount%9)!=0) {
			wetotalPage = wetotalCount/9+1;
		}else {
			wetotalPage = wetotalCount/9;
		}
		if(wepageIndex>wetotalPage) wepageIndex = wetotalPage;
		List<Order> weizhifulist = adminService.getweAll(wepageIndex);
		session.setAttribute("wepageIndex", wepageIndex);
		session.setAttribute("wetotalPage", wetotalPage);
		
		//yizhifulist
		Object yz = session.getAttribute("yzpageIndex");
		int yzpageIndex = 1;
		if(yz!=null)yzpageIndex=(int)yz;
		if(yzpI!=null)yzpageIndex=Integer.parseInt(yzpI);
		int yztotalCount = adminService.getyzTotalCount();
		int yztotalPage;
		if((yztotalCount%9)!=0) {
			yztotalPage = yztotalCount/9+1;
		}else {
			yztotalPage = yztotalCount/9;
		}
		if(yzpageIndex>yztotalPage) yzpageIndex = yztotalPage;
		List<Order> yizhifulist = adminService.getyzAll(yzpageIndex);
		session.setAttribute("yzpageIndex", yzpageIndex);
		session.setAttribute("yztotalPage", yztotalPage);
		
		//yiwanchenglist
		Object yw = session.getAttribute("ywpageIndex");
		int ywpageIndex = 1;
		if(yw!=null)ywpageIndex=(int)yw;
		if(ywpI!=null)ywpageIndex=Integer.parseInt(ywpI);
		int ywtotalCount = adminService.getywTotalCount();
		int ywtotalPage;
		if((ywtotalCount%9)!=0) {
			ywtotalPage = ywtotalCount/9+1;
		}else {
			ywtotalPage = ywtotalCount/9;
		}
		if(ywpageIndex>ywtotalPage) ywpageIndex = ywtotalPage;
		List<Order> yiwanchenglist = adminService.getywAll(ywpageIndex);
		session.setAttribute("ywpageIndex", ywpageIndex);
		session.setAttribute("ywtotalPage", ywtotalPage);
		
		m.addAttribute("weizhifulist", weizhifulist);
		m.addAttribute("yizhifulist", yizhifulist);
		m.addAttribute("yiwanchenglist", yiwanchenglist);
		return "ordersManage";
	}
	@RequestMapping("/delOrder")
	public String delOrder(String id) {
		adminService.delOrder( id);
		return "redirect:selectOrder.do";
	}
	@RequestMapping("/queRenOrder")
	public String queRenOrder(String id) {
		adminService.queRenOrder( id);
		return "redirect:selectOrder.do";
	}
	@RequestMapping("/selectOrderDetail")
	public String selectOrderDetail(Model m,String id) {
		OrderDetail o = adminService.selectOrderDetail( id);
		m.addAttribute("orderDetail", o);
		return "OrderDetail";
	}
	@RequestMapping("/selectMyOrders")
	public String selectMyOrders(Model m,HttpSession session,String mwepI,String myzpI,String mywpI) {
		Object u = session.getAttribute("user");
		User user = (User)u;
		int id = user.getId();
		//weizhifulist
		Object mwe = session.getAttribute("mwepageIndex");
		int mwepageIndex = 1;
		if(mwe!=null)mwepageIndex=(int)mwe;
		if(mwepI!=null)mwepageIndex=Integer.parseInt(mwepI);
		int mwetotalCount = adminService.getmweTotalCount(id);
		int mwetotalPage;
		if((mwetotalCount%9)!=0) {
			mwetotalPage = mwetotalCount/9+1;
		}else {
			mwetotalPage = mwetotalCount/9;
		}
		if(mwepageIndex>mwetotalPage) mwepageIndex = mwetotalPage;
		List<Order> weizhifulist = adminService.getmweAll(id,mwepageIndex);
		session.setAttribute("mwepageIndex", mwepageIndex);
		session.setAttribute("mwetotalPage", mwetotalPage);
		
		//yizhifulist
		Object myz = session.getAttribute("myzpageIndex");
		int myzpageIndex = 1;
		if(myz!=null)myzpageIndex=(int)myz;
		if(myzpI!=null)myzpageIndex=Integer.parseInt(myzpI);
		int myztotalCount = adminService.getmyzTotalCount(id);
		int myztotalPage;
		if((myztotalCount%9)!=0) {
			myztotalPage = myztotalCount/9+1;
		}else {
			myztotalPage = myztotalCount/9;
		}
		if(myzpageIndex>myztotalPage) myzpageIndex = myztotalPage;
		List<Order> yizhifulist = adminService.getmyzAll(id,myzpageIndex);
		session.setAttribute("myzpageIndex", myzpageIndex);
		session.setAttribute("myztotalPage", myztotalPage);
		
		//yiwanchenglist
		Object myw = session.getAttribute("mywpageIndex");
		int mywpageIndex = 1;
		if(myw!=null)mywpageIndex=(int)myw;
		if(mywpI!=null)mywpageIndex=Integer.parseInt(mywpI);
		int mywtotalCount = adminService.getmywTotalCount(id);
		int mywtotalPage;
		if((mywtotalCount%9)!=0) {
			mywtotalPage = mywtotalCount/9+1;
		}else {
			mywtotalPage = mywtotalCount/9;
		}
		if(mywpageIndex>mywtotalPage) mywpageIndex = mywtotalPage;
		List<Order> yiwanchenglist = adminService.getmywAll(id,mywpageIndex);
		session.setAttribute("mywpageIndex", mywpageIndex);
		session.setAttribute("mywtotalPage", mywtotalPage);
		
		m.addAttribute("weizhifulist", weizhifulist);
		m.addAttribute("yizhifulist", yizhifulist);
		m.addAttribute("yiwanchenglist", yiwanchenglist);
		return "MyOrders";
	}
	@RequestMapping("/delMyOrder")
	public String delMyOrder(String id) {
		adminService.delOrder( id);
		return "redirect:selectMyOrders.do";
	}
	@RequestMapping("/payMyOrder")
	public String payMyOrder(String id) {
		adminService.payMyOrder( id);
		return "redirect:selectMyOrders.do";
	}
	@RequestMapping("/buyMerchandise")
	public String buyMerchandise(HttpSession session,String id) {
		Object u = session.getAttribute("user");
		User user = (User)u;
		adminService.buyMerchandise(user, id);
		return "redirect:Merchandise.do";
	}
	@RequestMapping("/selectCart")
	public String selectCart(Model model,HttpSession session) {
		Object u = session.getAttribute("user");
		User user = (User)u;
		ShoppingCart s = adminService.selectCart(user);
		model.addAttribute("ShoppingCart", s);
		return "selectCart";
	}
	@RequestMapping("/reviseCount")
	public String reviseCount(HttpSession session,String id,String value) {
		Object u = session.getAttribute("user");
		User user = (User)u;
		adminService.reviseCount(user,id,value);
		return "redirect:selectCart.do";
	}
	@RequestMapping("/deleteCartItem")
	public String deleteCartItem(HttpSession session,String id) {
		Object u = session.getAttribute("user");
		User user = (User)u;
		adminService.deleteCartItem(user,id);
		return "redirect:selectCart.do";
	}
	@RequestMapping("/shengchengOrder")
	public String shengchengOrder(HttpSession session,Model model,String name,String phone,String address) {
		Object u = session.getAttribute("user");
		User user = (User)u;
		int id = adminService.shengchengOrder(user, name, phone, address);
		model.addAttribute("id", id);
		return "OrderId";
	}
//	shengchengOrder.do
}
