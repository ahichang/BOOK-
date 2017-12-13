<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="reviseMerchandiseType.do">
		<table border="1">
			<tr>
				<th>id</th>
				<th>name</th>
			</tr>
			<tr>
				<td>${MerchandiseType.id}</td>
				<td>${MerchandiseType.name}</td>
			</tr>
			<tr>
				<td>id不可修改<input type="hidden" value="${MerchandiseType.id}" name="id"></td>
				<td><input type="text" name="name" value="${MerchandiseType.name}"></td>
			</tr>
		</table>
		<input type="submit" value="修改">
	</form>
</body>
</html>