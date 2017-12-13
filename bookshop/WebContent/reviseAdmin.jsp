<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员修改信息</title>
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
				<form action="reviseAdmin.do" method="post">
					<div class="register-top-grid">
						<h3>ADMIN</h3>
						<div class="input">
							<span>ID</span>
							${admin.id}
							id不可修改<input type="hidden" value="${admin.id}" name="id">
						</div>
						<div class="input">
							<span>UserName</span>${admin.username}
							<input type="text" name="username" value="${admin.username}">
						</div>
						<div class="register-bottom-grid">
							<span>PassWord</span>${admin.password}
							<input type="text" name="password" value="${admin.password}">
						</div>
						<div class="register-bottom-grid">
							<span>RealName</span>${admin.realname}
							<input type="text" name="realname" value="${admin.realname}">
						</div>
						
						<div class="clearfix"> </div>
					</div><br><br>
				<div class="register-but" align="center" >
				 
				 <font size="12">
					   <input type="submit" value="修改">
					   <div class="clearfix"> </div>
				 </font> 
				</div>
					
				</form>
			</div>
	    </div>
	</div>

</body>
</html>