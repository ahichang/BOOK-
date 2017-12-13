<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="xiugaiUser.do">
		<table border="1">
			<tr>
				<th>id</th>
				<th>username</th>
				<th>password</th>
				<th>email</th>
				<th>telephone</th>
				<th>address</th>
				<th>posttime</th>
			</tr>
			<tr>
				<td>${user.id}</td>
				<td>${user.username}</td>
				<td>${user.password}</td>
				<td>${user.email}</td>
				<td>${user.telephone}</td>
				<td>${user.address}</td>
				<td>${user.posttime}</td>
			</tr>
			<tr>
				<td>id不可修改<input type="hidden" value="${user.id}" name="id"></td>
				<td><input type="text" name="username" value="${user.username}"></td>
				<td><input type="text" name="password" value="${user.password}"></td>
				<td><input type="text" name="email" value="${user.email}"></td>
				<td><input type="text" name="telephone" value="${user.telephone}"></td>
				<td><input type="text" name="address" value="${user.address}"></td>
				<td>注册时间不可修改</td>
			</tr>
		</table>
		<input type="submit" value="修改">
	</form>
</body>
</html>