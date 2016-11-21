<%@page import="DayLaNhom14.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>  
<%	User objUser = (User)session.getAttribute("userLogin"); 
	String query = "SELECT thamgia.Makhoahoc,taikhoan.Hoten,taikhoan.SDT,taikhoan.Email FROM taikhoan,thamgia,khoahoc WHERE taikhoan.Mavaitro='VT01' AND taikhoan.Tentaikhoan=thamgia.Tentaikhoan AND khoahoc.Tengiangvien='"+objUser.getUsername()+"'";
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trang GV-KH</title>
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
	<script type="text/javascript" src="ajax/ajax.js"></script>
	

    <link rel="shortcut icon" href="ico/favicon.png">
    <!-- css -->
    <link rel="stylesheet" href="css/main.css">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">	    
		
</head>
<body>

	<div class="row">
	<div class="panel panel-primary">
		<div class="panel-heading" style="text-align: center;" >DANH SÁCH HỌC VIÊN</div>
			<table class="table table-bordered" cellpadding="1" rules="all" border="1"  style="width:100%;border-collapse:collapse;" align="center">
				<thead>
				<tr  style="height:30px;background-color: #00BFFF;">
					<td style="width:5%;" align="center"> STT</td>
					<td style="width:20%;" align="center"> Mã khóa học</td>
					<td style="width:20%;" align="center"> Tên học viên</td>
					<td style="width:20%;" align="center">Số điện thoại</td>
					<td style="width:20%;" align="center">Email</td>
					<td style="width:4%;" align="center">Chọn</td>
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
							<td><input type="checkbox"></input></td>							
						</tr>
					<% i++; %>
					</c:forEach>
					<% i=0; %>
				</tbody>
			</table>
		 <button class="btn btn-warning pull-right">Tìm kiếm</button>
		</div>
		</div>
</body>
</html>