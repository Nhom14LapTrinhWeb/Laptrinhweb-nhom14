
<%@page import="Models.Users"%>
<%@page import="dao.UsersDAO"%>
<%@page import="DayLaNhom14.User"%>
<%	User objUser = (User)session.getAttribute("userLogin"); %> 
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<%
	UsersDAO udao = new UsersDAO();
%>
	<div class="panel panel-primary" style="text-align: center;">
	    <div class="panel-heading" >Giảng viên</div>
		<table border="1" class="table">
			<tr>
				<th>Tên tài khoản</th>	
				<th>Vai trò</th>
				<th>Bổ nhiệm</th>	                
			</tr>
			<%for(Users u : udao.getListUserByVaiTro("VT02")){
				

				%>
			

				<tr>
								
					<td><%= u.getTentaikhoan() %></td>	
					<td>Giảng viên</td>	             
					<td><input type="button" name="operation" value="Sửa" onclick="window.location.href='bonhiem.jsp?commandd=update&TenTK=<%= u.getTentaikhoan()%>'"></td>
												
				</tr>
			<%
				}
			%>
		</table>
		
	</div>
	<div class="panel panel-primary" style="text-align: center;">
	    <div class="panel-heading" >Học viên</div>
		<table border="1" class="table">
			<tr>
				<th>Tên tài khoản</th>	
				<th>Vai trò</th>
				<th>Bổ nhiệm</th>	                
			</tr>
			<%for(Users u : udao.getListUserByVaiTro("VT01")){
				

				%>
			

				<tr>
								
					<td><%= u.getTentaikhoan() %></td>	
					<td>Học viên</td>	             
					<td><input type="button" name="operation" value="Sửa" onclick="window.location.href='bonhiem.jsp?TenTK=<%= u.getTentaikhoan()%>'"></td>
												
				</tr>
			<%
				}
			%>
		</table>
		
	</div>
</body>
</html>