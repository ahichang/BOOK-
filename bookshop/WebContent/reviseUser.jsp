<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改信息表</title>
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
		<form action="reviseUser.do" method="post">
			<table border="0">
			<tr>
				<th><font  color="#FFFAFA" size="2">id&nbsp;&nbsp;&nbsp;</font></th>
				<th><font  color="#FFFAFA" size="2">username</font></th>
				<th><font  color="#FFFAFA" size="2">password</font></th>
				<th><font  color="#FFFAFA" size="2">email</font></th>
				<th><font  color="#FFFAFA" size="2">telephone</font></th>
				<th><font  color="#FFFAFA" size="2">address</font></th>
				<th><font  color="#FFFAFA" size="2">posttime</font></th>
			</tr>
			<tr>
				<td><font  color="#FFFAFA" size="2">${user.id}</font></td>
				<td><font  color="#FFFAFA" size="2">${user.username}</font></td>
				<td><font  color="#FFFAFA" size="2">${user.password}</font></td>
				<td><font  color="#FFFAFA" size="2">${user.email}</font></td>
				<td><font  color="#FFFAFA" size="2">${user.telephone}</font></td>
				<td><font  color="#FFFAFA" size="2">${user.address}</font></td>
				<td><font  color="#FFFAFA" size="2">${user.posttime}</font></td>
			</tr>
			<tr>
				<td><font  color="#FFFAFA" size="2">id不可修改<input type="hidden" value="${user.id}" name="id"></font></td>
				<td><font  color="#FFFAFA" size="2"><input type="text" name="username" value="${user.username}"></font></td>
				<td><font  color="#FFFAFA" size="2"><input type="text" name="password" value="${user.password}"></font></td>
				<td><font  color="#FFFAFA" size="2"><input type="text" name="email" value="${user.email}"></font></td>
				<td><font  color="#FFFAFA" size="2"><input type="text" name="telephone" value="${user.telephone}"></font></td>
				<td><font  color="#FFFAFA" size="2"><input type="text" name="address" value="${user.address}"></font></td>
				<td><font  color="#FFFAFA" size="2">注册时间不可修改</font></td>
			</tr>
		</table>
		 	<font  color="red" size="2"><input type="submit" value="修改" align="center"></font>
	</form>
			</div>
	    </div>
	</div>
</body>
</html>