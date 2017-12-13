<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<title>乾坤书店</title>
<link type="text/css" rel="stylesheet" href="Css/reset.css" />
<link type="text/css" rel="stylesheet" href="Css/1024_768.css" />
<link type="text/css" rel="stylesheet"
	media="screen and (min-width:861px) and (max-width:960px)"
	href="Css/pad_heng.css" />
<link type="text/css" rel="stylesheet"
	media="screen and (min-width:601px) and (max-width:860px)"
	href="Css/pad.css" />
<link type="text/css" rel="stylesheet"
	media="screen and (min-width:481px) and (max-width:600px)"
	href="Css/tel_heng.css" />
<link type="text/css" rel="stylesheet"
	media="screen and (max-width:480px)" href="Css/tel.css" />
</head>

<body>
	<div class="w_100_l top_title">
		<div class="main">
			<p style="color: red;">
				欢迎您：${user.username}~<a href="xiugaiUser.jsp">修改信息？</a>&nbsp;&nbsp;&nbsp;<a href="userLogout.do">退出登录</a>&nbsp;&nbsp;&nbsp;<a href="selectMyOrders.do">查看订单</a>
			</p>
		</div>
	</div>

	<div class="w_100_l">
		<div class="main">
			<div class="top_banner">
				<div class="top_logo">
					<img src="Images/top_logo.jpg" alt="A BOOK APART LOGO" />
				</div>
				<div class="top_menu">
					<ul>
						<li class="sel">首页</li>
						<li>图书列表</li>
						<li>图书分类</li>
						<li>关于</li>
						<li>帮助</li>
					</ul>
				</div>
				<div class="top_shop_cur">
					<a href="selectCart.do"><img src="Images/top_shop_cur.jpg"
						alt="shopping car" /></a>
				</div>
			</div>
			<span class="index_img"><img src="Images/banner_img.jpg"
				alt="Dan Cederholm" border="0" usemap="#Map" /> <map name="Map"
					id="Map">
					<area shape="rect" coords="857,230,930,269" href="#" alt="buy now" />
				</map> </span>
			<p class="index_hr"></p>
			<div class="content">
				<h1 class="h1_book_title">Also from A Book Apart</h1>
				<ul>
					<c:forEach items="${list}" var="Merchandise">
						<li>
							<dl>
								<dd>
									<a href="MerchandiseDetail.do?id=${Merchandise.id}"><img src="${Merchandise.imgurl}" alt="Merchandise" /></a>
								</dd>
								<dt>
									<p class="book_title">
										<a href="#" target="_blank">${Merchandise.name}</a>
									</p>
									<p class="book_inline">${book.price}</p>
									<a class="book_buy" href="buyMerchandise.do?id=${Merchandise.id}" target="_self">BUY</a>
								</dt>
							</dl>
						</li>
					</c:forEach>
				</ul>
				<p align="center"><a href="Merchandise.do?pI=1">首页</a>&nbsp;&nbsp;&nbsp;
						<c:if test="${pageIndex!=1}">
							<a href="Merchandise.do?pI=${pageIndex-1}">上一页</a>&nbsp;&nbsp;&nbsp;
			</c:if> <c:if test="${pageIndex!=totalPage}">
							<a href="Merchandise.do?pI=${pageIndex+1}">下一页</a>&nbsp;&nbsp;&nbsp;
			</c:if> <a href="Merchandise.do?pI=${totalPage}">尾页</a>
					</p>
			</div>
			<p class="index_hr"></p>
			<div class="content_press">
				<div class="press_porsen_01">
					<h1>Press Room</h1>
					<dl>
						<dd>
							<img src="Images/img_men.jpg" alt="person" />
						</dd>
						<dt>
							<p class="date">Apr 03, 2014</p>
							<p class="book_title">
								<a href="#" target="_blank">Design Is a Job audiobook</a>
							</p>
							<p class="book_intro">
								We’re pleased to announce that <a href="#">Design Is a Job</a>
								by Mike Monteiro is now available in audiobook format, through <a
									href="#">Audible.com</a> and <a href="#">Amazon.com</a>.
								Narrated by the raconteur himself, experience the guidance,
								real-talk, and humor of our seminal book on design as a job.
							</p>
						</dt>
					</dl>
				</div>
				<div class="press_porsen_02">
					<h1>
						<span class="span_2"><a href="#"> More Articles →</a></span><span
							class="span_1"><a href="#">Press Room RSS</a></span>
					</h1>
					<dl>
						<dd>
							<img src="Images/img_lives.jpg" alt="book img" />
						</dd>
						<dt>
							<p class="date">Mar 31, 2014</p>
							<p class="book_title">
								<a href="#" target="_blank">A Few of Our Faves: March 31st</a>
							</p>
							<p class="book_intro">
								As the madness of March comes to a close, we gathered up a few
								things that caught our attention during the last half of the
								month. <a href="#">Read on for more.</a>
							</p>
						</dt>
					</dl>
				</div>
			</div>
			<p class="index_hr"></p>
			<h1 class="news_title">Newsletter</h1>
			<p class="news_title_1">
				<span class="span_1">Keep up to date with new book releases
					and announcements with our newsletter.</span><span class="span_2"><img
					src="Images/img_inp.jpg" /></span>
			</p>
			<p class="index_hr" style="margin-top: 20px;"></p>
			<div class="footer">
				<span class="span_1">&copy; Copyright 2014, A Book Apart, LLC</span>&nbsp;&nbsp;
				<a href="#">Help & Contact us</a> <a class="a1" href="#">Press
					Room RSS feed</a> <a class="a2" href="#">abookapart on Twitter</a> <span
					class="span_2"><b>Published by</b><img
					src="Images/icon_hg.jpg" align="absmiddle" /></span>
			</div>
		</div>
	</div>
	<div style="display: none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>