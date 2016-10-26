<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/hoclaptrinhonline"
	user="root"
	password="phihung123789"/>
<sql:query var="items" sql="SELECT * FROM taikhoan WHERE Tentaikhoan='abc'"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
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
	<div class="row">
		<div class="panel panel-primary">
			<div class="panel-heading" style="text-align:center;">Thông tin tài khoản</div>
				<table class="table table-bordered">
					<tr>
						<th>Tên tài khoản</th>
						<td></td>
					</tr>
					<tr>
						<th>Họ và tên</th>
						<td></td>
					</tr>
					<tr>
						<th>Ngày sinh</th>
						<td></td>
					</tr>
					<tr>
						<th>Địa chỉ</th>
						<td></td>
					</tr>
					<tr>
						<th>Email</th>
						<td></td>
					</tr>
					<tr>
						<th>Điện thoại</th>
						<td></td>
					</tr>
					<tr>
						<th>Vai trò</th>
						<td></td>
					</tr>
				</table>
				<button class="btn btn-warning pull-right">Chỉnh sửa thông tin</button>
				<button class="btn btn-warning pull-right">Đổi mật khẩu</button>
		</div>
	</div>
</body>
</html>