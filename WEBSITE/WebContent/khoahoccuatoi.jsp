<%@page import="DayLaNhom14.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>  
<%	User objUser = (User)session.getAttribute("userLogin"); 
	String query = "SELECT Khoahoc.Makhoahoc,khoahoc.Tenkhoahoc FROM Khoahoc,Thamgia WHERE Thamgia.Tentaikhoan='"+objUser.getUsername()+"' and thamgia.makhoahoc=khoahoc.makhoahoc";
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
		<div class="panel-heading" style="text-align: center;">Xem các môn học đã đăng ký</div>
			<table class="table" border="1">
				<thead>
					<tr>
						<th>STT</th>
						<th>Mã khóa học</th>
						<th>Tên khóa học</th>
						<th>Chi tiết khóa học</th>
						<th>Chọn</th>
					</tr>
				</thead>
				<tbody>
					<%! int i=0; %>
					<c:forEach items="${items.rowsByIndex}" var="row">	
						<tr>
							<td><%= i+1 %></td>
							<c:forEach items="${row}" var="col">			
								<td>${col}</td>			                     
							</c:forEach>
							<td><a id="<%= i %>" href="#">Chi tiết</a></td>
							<td><input type="checkbox"></input></td>							
						</tr>
					<% i++; %>
					</c:forEach>
					<% i=0; %>
				</tbody>
			</table>
			<button class="btn btn-warning pull-right">Hủy đăng ký môn học</button>								
	</div>
</div>
</body>
</html>