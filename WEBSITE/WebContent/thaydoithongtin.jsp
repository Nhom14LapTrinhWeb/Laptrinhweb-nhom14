<%@page import="DayLaNhom14.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<%	User objUser = (User)session.getAttribute("userLogin"); 
	String query = "SELECT tentaikhoan from taikhoan WHERE tentaikhoan='"+objUser.getUsername()+"'";
%> 
<sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/hoclaptrinhonline"
	user="root"
	password="phihung123789"/>
<sql:query var="items" sql="<%= query %>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- js -->
    <script src="jquery/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="jquery/script.js"></script> 
	<script src="jquery/main.js"></script>
	<script type="text/javascript" src="jquery/angular.min.js"></script>
	<script type="text/javascript" src="ajax/ajax.js"></script>
	<title>CODE.VN</title>
    <link rel="shortcut icon" href="ico/favicon.png">
    <!-- css -->
    <link rel="stylesheet" href="css/main.css">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-primary">
				<div class="panel-heading" style="text-align: center;">Thay đổi thông tin</div>
				<form action="" class="register">
					<div class="form-group" style="text-align:center;">
						<label for="tentaikhoan">Tên tài khoản</label>
						<c:forEach items="${items.rows}" var="row">
							<input id="tentaikhoan" class="form-control type="text" disabled="" value="${row.Tentaikhoan}">
						</c:forEach>
					</div>
					<div class="form-group" style="text-align:center;" >
						<label for="hoten">Họ và tên</label>
						<input type="text" id="hoten" class="form-control">
					</div>
					<div class="form-group" style="text-align:center;">
						<label for="ngaysinh">Ngày sinh</label>
						<input type="text" id="ngaysinh" class="form-control">
					</div>
					<div class="form-group" style="text-align:center;">
						<label for="diachi">Địa chỉ</label>
						<input id="diachi" class="form-control" type="text">
					</div>
					<div class="form-group" style="text-align:center;">
						<label for="email">Email</label>
						<input id="email" class="form-control" type="text">
					</div>
					<div class="form-group" style="text-align:center;">
						<label for="sdt">Điện thoại</label>
						<input id="sdt" class="form-control" type="text">
					</div>
				</form>			
			</div>
			<button class="btn btn-primary pull-right">Hủy bỏ</button>
			<button id="doimatkhau" class="btn btn-primary pull-right" type="submit">Xác nhận</button>
		</div>
	</div>
</div>
</body>
</html>