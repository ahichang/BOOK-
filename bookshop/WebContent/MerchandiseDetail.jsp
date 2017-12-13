<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书详情表</title>
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
		<table border="0"  align="center" width="800px" hight="600px">
		<tr><th colspan="5"><font  color="#FFFAFA" size="10">图书详细信息</font></th></tr>
		<tr>
			<th><font  color="#FFFAFA" size="10">id</font></th>
			<th><font  color="#FFFAFA" size="10">Name</font></th>
			<th><font  color="#FFFAFA" size="10">author</font></th>
			<th><font  color="#FFFAFA" size="10">price</font></th>
			<th><font  color="#FFFAFA" size="10">img</font></th>
		</tr>
		<tr>
			<td><font  color="#FFFAFA" size="10">${merchandise.id}</font></td>
			<td><font  color="#FFFAFA" size="10">${merchandise.name}</font></td>
			<td><font  color="#FFFAFA" size="10">${merchandise.author}</font></td>
			<td><font  color="#FFFAFA" size="10">${merchandise.price}</font></td>
			<td><font  color="#FFFAFA" size="10">${merchandise.imgurl}</font></td>
		</tr>
	</table>
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	<table border="0"  align="center" width="800px" hight="600px">
		<tr><th colspan="2"><font  color="#FFFAFA" size="10">图书所属类别</font></th></tr>
		<tr>
			<th><font  color="#FFFAFA" size="10">type_id</font></th>
			<th><font  color="#FFFAFA" size="10">type_name</font></th>
		</tr>
		<c:forEach items="${merchandise.merchandiseTypeSet}" var="MerchandiseType">
			<tr>
				<td><font  color="#FFFAFA" size="10">${MerchandiseType.id}</font></td>
				<td><font  color="#FFFAFA" size="10">${MerchandiseType.name}</font></td>
			</tr>
		</c:forEach>
	</table>
	<p><a href="Merchandise.do"><font  color="#FFFAFA" size="10">返回</font></a><p>
	</div>
</body>
</html>