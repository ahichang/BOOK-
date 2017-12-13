<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书管理</title>
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
				<form action="appendMerchandise.do">
					<div class="register-top-grid">
						<h3>ADDBOOKS</h3>
						<div class="input">
							<span>Name</span>
							<input type="text" name="name">
						</div>
						<div class="register-bottom-grid">
							<span>Author</span>
							<input type="text" name="author">
						</div>
						<div class="register-bottom-grid">
							<span>Price</span>
							<input type="text" name="price">
						</div>
						<div class="register-bottom-grid">
							<span>Imgurl</span>
							<input type="text" name="imgurl">
						</div>
						<div class="register-bottom-grid">
							<span>Type_id</span>
							<input type="text" name="type_id">
						</div>
						
						<div class="clearfix"> </div>
					</div><br><br>
				<div class="register-but" align="center" >
				 
				 <font size="12">
					   <input type="submit" value="提交">
					   <div class="clearfix"> </div>
				 </font> 
				</div>
					
				</form>
			</div>
	    </div>
	</div>
	
	<p><font size="8" color="red">新加入的图书将显示在跳转页（图书管理）的尾页</font></p>
</body>
</html>