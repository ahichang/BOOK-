<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品类别</title>
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
				<form action="reviseMerchandise.do">
				<table border="0">
			<tr>
				<th><font  color="#FFFAFA" size="4">id&nbsp;&nbsp;&nbsp;</font></th>
				<th><font  color="#FFFAFA" size="4">name&nbsp;&nbsp;&nbsp;</font></th>
				<th><font  color="#FFFAFA" size="4">author&nbsp;&nbsp;&nbsp;</font></th>
				<th><font  color="#FFFAFA" size="4">price&nbsp;&nbsp;&nbsp;</font></th>
				<th><font  color="#FFFAFA" size="4">imgurl&nbsp;&nbsp;&nbsp;</font></th>
			</tr>
			<tr>
				<td><font  color="#FFFAFA" size="4">${merchandise.id}</font></td>
				<td><font  color="#FFFAFA" size="4">${merchandise.name}</font></td>
				<td><font  color="#FFFAFA" size="4">${merchandise.author}</font></td>
				<td><font  color="#FFFAFA" size="4">${merchandise.price}</font></td>
				<td><font  color="#FFFAFA" size="4">${merchandise.imgurl}</font></td>
			</tr>
			<tr>
				<td><font  color="#FFFAFA" size="2">id不可修改<input type="hidden" value="${merchandise.id}" name="id"></font></td>
				<td><font  color="#FFFAFA" size="2"><input type="text" name="name" value="${merchandise.name}"></font></td>
				<td><font  color="#FFFAFA" size="2"><input type="text" name="author" value="${merchandise.author}"></font></td>
				<td><font  color="#FFFAFA" size="2"><input type="text" name="price" value="${merchandise.price}"></font></td>
				<td><font  color="#FFFAFA" size="2"><input type="text" name="imgurl"
					value="${merchandise.imgurl}"></font></td>
			</tr>
		</table>
		<br>
		<font  color="red" size="3" ><input type="submit" value="修改" ailgn="center"></font>
	</form>
		<br>
		<br>
		<form action="addMerchandiseType.do">
			<table border="0">
				<tr><th colspan="3"><font  color="#FFFAFA" size="4">商品所属类别</font></th></tr>
				<tr>
					<th><font  color="#FFFAFA" size="4">type_id</font></th>
					<th><font  color="#FFFAFA" size="4">type_name</font></th>
					<th><font  color="#FFFAFA" size="4">从该类别中移除</font></th>
				</tr>
				<c:forEach items="${merchandise.merchandiseTypeSet}" var="MerchandiseType">
					<tr>
						<td><font  color="#FFFAFA" size="4">${MerchandiseType.id}</font></td>
						<td><font  color="#FFFAFA" size="4">${MerchandiseType.name}</font></td>
						<td><font  color="#FFFAFA" size="4"><a href="deleteMerchandiseType.do?id=${merchandise.id}&typeId=${MerchandiseType.id}">删除</a></font></td>
					</tr>
				</c:forEach>
				<tr><font  color="#FFFAFA" size="4"><td colspan="3" style="color: red;">如需添加类别，请在下方输入类别id，添加多个请用*隔开</td></font></tr>
				<tr><font  color="#FFFAFA" size="4"><td colspan="2"><input type="text" name="type_id">
				     <input type="hidden" name="id" value="${merchandise.id}"></td></font>
				
				<td><font  color="red" size="4"><input type="submit" value="添加"></font></td></tr>
			</table>
		</form>
					
				</form>
			</div>
	    </div>
	</div>
		
</body>
</html>