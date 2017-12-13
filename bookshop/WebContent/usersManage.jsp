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
	<table border="1">
		<tr><th colspan="9">用户列表</th></tr>
		<tr>
			<th>id</th>
			<th>username</th>
			<th>password</th>
			<th>email</th>
			<th>telephone</th>
			<th>address</th>
			<th>posttime</th>
			<th>revise</th>
			<th>delete</th>
		</tr>
		<c:forEach items="${list}" var="user">
			<tr>
				<td>${user.id}</td>
				<td>${user.username}</td>
				<td>${user.password}</td>
				<td>${user.email}</td>
				<td>${user.telephone}</td>
				<td>${user.address}</td>
				<td>${user.posttime}</td>
				<td><a
					href="selectUser.do?id=${user.id}">修改</a></td>
				<td><a href="deleteUser.do?id=${user.id}">删除</a></td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="9"><a href="userManage.do?upI=1">首页</a>&nbsp;&nbsp;&nbsp;
				<c:if test="${upageIndex!=1}">
					<a href="userManage.do?upI=${upageIndex-1}">上一页</a>&nbsp;&nbsp;&nbsp;
			</c:if> <c:if test="${upageIndex!=utotalPage}">
					<a href="userManage.do?upI=${upageIndex+1}">下一页</a>&nbsp;&nbsp;&nbsp;
			</c:if> <a href="userManage.do?upI=${utotalPage}">尾页</a>
			</td>
		</tr>
	</table>
</body>
</html>