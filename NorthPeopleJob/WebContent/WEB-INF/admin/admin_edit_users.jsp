<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" type="text/css" href="<%=basePath %>
	css/bootstrap/bootstrap.min.css">
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
	<title>Insert title here</title>
	<style type="text/css">
		.container{
			margin-top:100px;
		}
	</style>
</head>
<body>
	<div class="container myUserTable">
		<form class="form-horizontal">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
				<div class="col-sm-6">
					<input type="email" class="form-control" id="inputEmail3" placeholder="用户名" value="${myEditUser.username}"></div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">用户密码</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" id="inputPassword3" placeholder="用户密码"
					value="${myEditUser.password}"></div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">用户类型</label>
				<div class="col-sm-6">
					<select class="form-control">
						<option>1(管理员)</option>
						<option>2(业务员)</option>
						<option>3(普通用户)</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-2 control-label">真实姓名</label>
				<div class="col-sm-6">
					<input type="text" class="form-control" id="inputPassword3" placeholder="真实姓名"
					value="${myEditUser.name}"></div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-6">
					<button type="submit" class="btn btn-success">提交</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>