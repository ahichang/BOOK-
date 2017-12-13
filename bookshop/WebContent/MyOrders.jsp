<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="Merchandise.do">继续购物</a><br>
	<c:if test="${weizhifulist.isEmpty()==false}">
		<table border="1" style="display: inline;">
			<tr>
				<th colspan="4">未支付表</th>
			</tr>
			<tr>
				<th>order_id</th>
				<th>time</th>
				<th>delete</th>
				<th>支付</th>
			</tr>
			<c:forEach items="${weizhifulist}" var="order">
				<tr>
					<td>${order.order_id}</td>
					<td>${order.time}</td>
					<td><a
						href="delMyOrder.do?id=${order.order_id}">删除</a></td>
					<td><a
						href="payMyOrder.do?id=${order.order_id}">支付</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="4"><a href="selectMyOrders.do?mwepI=1">首页</a>&nbsp;&nbsp;&nbsp;
					<c:if test="${mwepageIndex!=1}">
						<a href="selectMyOrders.do?mwepI=${mwepageIndex-1}">上一页</a>&nbsp;&nbsp;&nbsp;
			</c:if> <c:if test="${mwepageIndex!=mwetotalPage}">
						<a href="selectMyOrders.do?mwepI=${mwepageIndex+1}">下一页</a>&nbsp;&nbsp;&nbsp;
			</c:if> <a href="selectMyOrders.do?mwepI=${mwetotalPage}">尾页</a>
				</td>
			</tr>
		</table>
	</c:if>
	<c:if test="${yizhifulist.isEmpty()==false}">
		<table border="1" style="display: inline;">
			<tr>
				<th colspan="2">未发货订单表</th>
			</tr>
			<tr>
				<th>order_id</th>
				<th>time</th>
			</tr>
			<c:forEach items="${yizhifulist}" var="order">
				<tr>
					<td>${order.order_id}</td>
					<td>${order.time}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="2"><a href="selectMyOrders.do?myzpI=1">首页</a>&nbsp;&nbsp;&nbsp;
					<c:if test="${myzpageIndex!=1}">
						<a href="selectMyOrders.do?myzpI=${myzpageIndex-1}">上一页</a>&nbsp;&nbsp;&nbsp;
			</c:if> <c:if test="${myzpageIndex!=myztotalPage}">
						<a href="selectMyOrders.do?myzpI=${myzpageIndex+1}">下一页</a>&nbsp;&nbsp;&nbsp;
			</c:if> <a href="selectMyOrders.do?myzpI=${myztotalPage}">尾页</a>
				</td>
			</tr>
		</table>
	</c:if>
	<c:if test="${yiwanchenglist.isEmpty()==false}">
		<table border="1" style="display: inline;">
			<tr>
				<th colspan="4">历史订单</th>
			</tr>
			<tr>
				<th>order_id</th>
				<th>time</th>
				<th>order_detail</th>
			</tr>
			<c:forEach items="${yiwanchenglist}" var="order">
				<tr>
					<td>${order.order_id}</td>
					<td>${order.time}</td>
					<td><a
						href="selectOrderDetail.do?id=${order.order_id}">查看详细信息</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="3"><a href="selectMyOrders.do?mywpI=1">首页</a>&nbsp;&nbsp;&nbsp;
					<c:if test="${mywpageIndex!=1}">
						<a href="selectMyOrders.do?mywpI=${mywpageIndex-1}">上一页</a>&nbsp;&nbsp;&nbsp;
			</c:if> <c:if test="${mywpageIndex!=mywtotalPage}">
						<a href="selectMyOrders.do?mywpI=${mywpageIndex+1}">下一页</a>&nbsp;&nbsp;&nbsp;
			</c:if> <a href="selectMyOrders.do?mywpI=${mywtotalPage}">尾页</a>
				</td>
			</tr>
		</table>
	</c:if>
	<p style="color: red;">注：未支付表一旦点击生成订单默认也完成了网上支付</p><p>未发货订单则为买家已支付卖家未发货订单</p><p style="color: red;">历史订单则为已成功交易的订单</p><p>新添加及改动都将在尾页显示</p>
</body>
</html>