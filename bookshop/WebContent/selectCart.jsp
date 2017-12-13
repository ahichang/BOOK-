<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单信息表</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/jsp; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="Css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="Css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- js -->
<script src="Js/jquery.min.js"></script>
<script type="text/javascript" src="Js/bootstrap-3.1.1.min.js"></script>
<!-- //js -->	
<!-- cart -->
<script src="Js/simpleCart.min.js"> </script>
<!-- cart -->
</head>
<body>
<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand"><a  href="index.jsp">Yummy</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						
	<!--//header-->
	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<table border="0">
		<tr><th><font  color="#FFFAFA" size="6">商品&nbsp;&nbsp;&nbsp;</font></th>
		    <th><font  color="#FFFAFA" size="6">数量&nbsp;&nbsp;&nbsp;</font></th>
		    <th><font  color="#FFFAFA" size="6">删除&nbsp;&nbsp;&nbsp;</font></th>
	    </tr>
		<c:forEach items="${ShoppingCart.cartItemSet}" var="cartItem">
			<tr>
				<td><font  color="#FFFAFA" size="6">${cartItem.merchandise.name}</td>
				<td><font  color="#FFFAFA" size="6"><a href="reviseCount.do?id=${cartItem.id}&value=0" style="text-decoration: none;">&nbsp;&nbsp;-&nbsp;&nbsp;</a></font>
						<font  color="#FFFAFA" size="6">${cartItem.count}
						<a href="reviseCount.do?id=${cartItem.id}&value=1" style="text-decoration: none;">&nbsp;&nbsp;+&nbsp;&nbsp;</a></font></td>
				<td><font  color="#FFFAFA" size="6"><a href="deleteCartItem.do?id=${cartItem.id}">删除</a></font></td>
			</tr>
		</c:forEach>
	</table><font  color="#FFFAFA" size="6">
	<a href="consigneeInfo.jsp">填写收货人信息，生成订单</a></font>
			</div>
	    </div>
	</div>
</body>
</html>