<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
<!--
ul li{display: inline;color: blue;}
-->
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4 style="display: inline;">欢迎管理员：${admin.username},你好！</h4>
<a href="adminLogout.do" style="color: gray;">退出登录</a>
<ul style="list-style:none;">
    <li onclick="document.getElementById('6').src='userManage.do'">用户管理&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    <li onclick="document.getElementById('6').src='selectOrder.do'">订单管理&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    <li onclick="document.getElementById('6').src='merchandiseManage.do'">商品管理&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    <li onclick="document.getElementById('6').src='merchandiseTypeManage.do'">商品类别管理&nbsp;&nbsp;|&nbsp;&nbsp;</li>
    <li onclick="document.getElementById('6').src='adminManage.do'">管理员维护</li>
</ul>
<p style="color: red;">${message}</p>
<iframe frameborder="0" id="6" style="width: 100%;height: 490px;"></iframe>
</body>
</html>