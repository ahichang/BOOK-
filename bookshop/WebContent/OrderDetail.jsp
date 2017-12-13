<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>生成订单表</title>
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
		<tr><th colspan="3"><font  color="#FFFAFA" size="6">收货人信息</font></th></tr>
		<tr><td><font  color="#FFFAFA" size="4">姓名&nbsp;&nbsp;</font></td>
		<td><font  color="#FFFAFA" size="4">手机号&nbsp;&nbsp;</font></td>
		<td><font  color="#FFFAFA" size="4">地址&nbsp;&nbsp;</font></td></tr>
		<tr><td>${orderDetail.consigneeInfo.consigneeName}</td><td>${orderDetail.consigneeInfo.phoneNum}</td><td>${orderDetail.consigneeInfo.address}</td></tr>
	</table>
	       <br/>
	<table border="0">
		<tr><th><font  color="#FFFAFA" size="6">订单内商品</font></th></tr>
		<tr>
			<td><font  color="#FFFAFA" size="4">商品名 x 数量</font></td>
		</tr>
		<c:forEach items="${orderDetail.cartItemSet}" var="carItem">
			<tr>
				<th>${carItem.merchandise.name} x ${carItem.count}</th>
			</tr>
		</c:forEach>
	</table>
	<br/>
	<input name='ht' type='button' onclick='javascript:history.go(-1)' value='返回' />
			</div>
	    </div>
	</div>
</body>
</html>