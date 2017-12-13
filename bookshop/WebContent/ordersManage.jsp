<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单详情表</title>
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
			<font  color="#FFFAFA" size="6px"></font>
				<c:if test="${weizhifulist.isEmpty()==false}">
		<table border="0" style="display: inline;">
			<tr>
			<th colspan="4"><font  color="#FFFAFA" size="6px">未支付订单表</font></th>
			</tr>
			<tr>
				<th><font  color="#FFFAFA" size="3px">order_id&nbsp;&nbsp;&nsbp;</font></th>
				<th><font  color="#FFFAFA" size="3px">time&nbsp;&nbsp;&nsbp;</font></th>
				<th><font  color="#FFFAFA" size="3px">user_name&nbsp;&nbsp;&nsbp;</font></th>
				<th><font  color="#FFFAFA" size="3px">delete&nbsp;&nbsp;&nsbp;</font></th>
			</tr>
			<c:forEach items="${weizhifulist}" var="order">
				<tr>
					<td><font  color="#FFFAFA" size="3px">${order.order_id}</font></td>
					<td><font  color="#FFFAFA" size="3px">${order.time}</font></td>
					<td><font  color="#FFFAFA" size="3px">${order.user.username}</font></td>
					<td><font  color="#FFFAFA" size="3px">
					<a	href="delOrder.do?id=${order.order_id}">删除</a></font></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="4"><font  color="#FFFAFA" size="3px"><a href="selectOrder.do?wepI=1">首页</a></font>&nbsp;&nbsp;&nbsp;
					<c:if test="${wepageIndex!=1}">
						<font  color="#FFFAFA" size="3px"><a href="selectOrder.do?wepI=${wepageIndex-1}">上一页</a></font>&nbsp;&nbsp;&nbsp;
			</c:if> <c:if test="${wepageIndex!=wetotalPage}"><font  color="#FFFAFA" size="3px">
						<a href="selectOrder.do?wepI=${wepageIndex+1}">下一页</a></font>&nbsp;&nbsp;&nbsp;
			</c:if> <font  color="#FFFAFA" size="3px"><a href="selectOrder.do?wepI=${wetotalPage}">尾页</a></font>
				</td>
			</tr>
		</table>
	</c:if>
	<c:if test="${yizhifulist.isEmpty()==false}">
		<table border="0" style="display: inline;">
			<tr>
				<th colspan="4"><font  color="#FFFAFA" size="6px">已支付订单表</font></th>
			</tr>
			<tr>
				<th><font  color="#FFFAFA" size="3px">order_id&nbsp;&nbsp;&nbsp;</font></th>
				<th><font  color="#FFFAFA" size="3px">time&nbsp;&nbsp;&nbsp;</font></th>
				<th><font  color="#FFFAFA" size="3px">user_name&nbsp;&nbsp;&nbsp;</font></th>
				<th><font  color="#FFFAFA" size="3px">确认发货&nbsp;&nbsp;&nbsp;</font></th>
			</tr>
			<c:forEach items="${yizhifulist}" var="order">
				<tr>
					<td><font  color="#FFFAFA" size="3px">${order.order_id}</font></td>
					<td><font  color="#FFFAFA" size="3px">${order.time}</font></td>
					<td><font  color="#FFFAFA" size="3px">${order.user.username}</font></td>
					<td><font  color="#FFFAFA" size="3px">
					<a href="queRenOrder.do?id=${order.order_id}">确认发货</a></font></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="4"><font  color="#FFFAFA" size="3px"><a href="selectOrder.do?yzpI=1">首页</a></font>&nbsp;&nbsp;&nbsp;
					<c:if test="${yzpageIndex!=1}"><font  color="#FFFAFA" size="3px">
						<a href="selectOrder.do?yzpI=${yzpageIndex-1}">上一页</a></font>&nbsp;&nbsp;&nbsp;
			</c:if> <c:if test="${yzpageIndex!=yztotalPage}"><font  color="#FFFAFA" size="3px">
						<a href="selectOrder.do?yzpI=${yzpageIndex+1}">下一页</a></font>&nbsp;&nbsp;&nbsp;
			</c:if><font  color="#FFFAFA" size="3px"> <a href="selectOrder.do?yzpI=${yztotalPage}">尾页</a></font>
				</td>
			</tr>
		</table>
	</c:if>
	<c:if test="${yiwanchenglist.isEmpty()==false}">
		<table border="0" style="display: inline;">
			<tr>
				<th colspan="4"><font  color="#FFFAFA" size="6px">已完成订单表</font></th>
			</tr>
			<tr>
				<th><font  color="#FFFAFA" size="3px">order_id&nbsp;&nbsp;&nbsp;</font></th>
				<th><font  color="#FFFAFA" size="3px">time&nbsp;&nbsp;&nbsp;</font></th>
				<th><font  color="#FFFAFA" size="3px">user_name&nbsp;&nbsp;&nbsp;</font></th>
				<th><font  color="#FFFAFA" size="3px">order_detail&nbsp;&nbsp;&nbsp;</font></th>
			</tr>
			<c:forEach items="${yiwanchenglist}" var="order">
				<tr>
					<td><font  color="#FFFAFA" size="3px">${order.order_id}</font></td>
					<td><font  color="#FFFAFA" size="3px">${order.time}</font></td>
					<td><font  color="#FFFAFA" size="3px">${order.user.username}</font></td>
					<td><font  color="#FFFAFA" size="3px">
					<a href="selectOrderDetail.do?id=${order.order_id}">查看详细信息</a></font></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="4"><font  color="#FFFAFA" size="3px"><a href="selectOrder.do?ywpI=1">首页</a></font>&nbsp;&nbsp;&nbsp;
					<c:if test="${ywpageIndex!=1}"><font  color="#FFFAFA" size="3px">
						<a href="selectOrder.do?ywpI=${ywpageIndex-1}">上一页</a></font>&nbsp;&nbsp;&nbsp;
			</c:if> <c:if test="${ywpageIndex!=ywtotalPage}"><font  color="#FFFAFA" size="3px">
						<a href="selectOrder.do?ywpI=${ywpageIndex+1}">下一页</a></font>&nbsp;&nbsp;&nbsp;
			</c:if> <font  color="#FFFAFA" size="3px"><a href="selectOrder.do?ywpI=${ywtotalPage}">尾页</a></font>
				</td>
			</tr>
		</table>
	</c:if>
			</div>
	    </div>
	</div>
</body>
</html>