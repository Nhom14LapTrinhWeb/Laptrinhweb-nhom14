<%@page import="DayLaNhom14.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<%	User objUser = (User)session.getAttribute("userLogin"); 
	String query = "SELECT mabaitap,tenbaitap FROM baitap,khoahoc,thamgia WHERE tentaikhoan='"+objUser.getUsername()+"' and thamgia.makhoahoc=khoahoc.makhoahoc and khoahoc.makhoahoc = baitap.makhoahoc";
%> 
<sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/hoclaptrinhonline"
	user="root"
	password="phihung123789"/>
<sql:query var="items" sql="<%= query %>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- js -->
    <script src="jquery/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="jquery/script.js"></script> 
	<script src="jquery/main.js"></script>
	<script type="text/javascript" src="jquery/angular.min.js"></script>
	<title>CODE.VN</title>

    <link rel="shortcut icon" href="ico/favicon.png">
    <!-- css -->
    <link rel="stylesheet" href="css/main.css">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">	    
</head>
<body>
<div class="container">
<div class="col-md-6 col-md-offset-3">
	<div class="row">
		<div class="panel panel-primary">
			<div class="panel-heading" style="text-align: center;">Nộp bài</div>
			<form action="">
				<div class="form-group">
					<label for="tenbaitap">Tên bài tập</label>
					<select name="tenbaitap" class="form-control" id="tenbaitap">
					<c:forEach items="${items.rows}" var="row">
					<option id="${row.mabaitap}">${row.tenbaitap}</option>
					</c:forEach>
					</select>
				</div>
				<div>
					<label for="linkbainoi">Link bài nộp</label>
					<input type="text" class="form-control" id="linkbainop" placeholder="Chỉ dán link Google Docs">
				</div>
				<div>
					<button class="btn btn-success center-block">Xác nhận</button>
				</div>
				</form>
		</div>
	</div>
</div>
</div>
</body>
</html>