<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品类别表</title>
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
		<tr><th colspan="4"><font  color="#FFFAFA" size="8">商品类别列表</font></th></tr>
		<tr>
			<th><font  color="#FFFAFA" size="6">id&nbsp;&nbsp;</font></th>
			<th><font  color="#FFFAFA" size="6">name&nbsp;&nbsp;</font></th>
			<th><font  color="#FFFAFA" size="6">revise&nbsp;&nbsp;</font></th>
			<th><font  color="#FFFAFA" size="6">delete</font></th>
		</tr>
		<c:forEach items="${list}" var="MerchandiseType">
			<tr>
				<td><font  color="#FFFAFA" size="6">${MerchandiseType.id}</font></td>
				<td><font  color="#FFFAFA" size="6">${MerchandiseType.name}</font></td>
				<td><font  color="#FFFAFA" size="6"><a
					href="getMerchandiseType.do?id=${MerchandiseType.id}">修改</a></font></td>
				<td><font  color="#FFFAFA" size="6"><a href="delMerchandiseType.do?id=${MerchandiseType.id}">删除</a></font></td>
			</tr>
		</c:forEach>
		<tr align="center">
			<td colspan="4"><font  color="#FFFAFA" size="6"><a href="merchandiseTypeManage.do?mtpI=1">首页</a></font>&nbsp;&nbsp;&nbsp;
				<c:if test="${mtpageIndex!=1}"><font  color="#FFFAFA" size="6">
					<a href="merchandiseTypeManage.do?mtpI=${mtpageIndex-1}">上一页</a></font>&nbsp;&nbsp;&nbsp;
			</c:if> <c:if test="${mtpageIndex!=mttotalPage}"><font  color="#FFFAFA" size="6">
					<a href="merchandiseTypeManage.do?mtpI=${mtpageIndex+1}">下一页</a></font>&nbsp;&nbsp;&nbsp;
			</c:if> <font  color="#FFFAFA" size="6"><a href="merchandiseTypeManage.do?mtpI=${mttotalPage}">尾页</a></font>
			</td>
		</tr>
		<tr align="center"><td colspan="4"><font  color="#FFFAFA" size="6"><a href="addMerchandiseType.jsp">添加</a></font></td></tr>
	</table>
			</div>
	    </div>
	</div>
</body>
</html>