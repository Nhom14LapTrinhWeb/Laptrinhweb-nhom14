<%@page import="DayLaNhom14.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<%	User objUser = (User)session.getAttribute("userLogin"); 
	String query = "SELECT tentaikhoan,hoten,ngaysinh,diachi,email,sdt,tenvaitro from taikhoan,vaitro where tentaikhoan='"+objUser.getUsername()+"' and taikhoan.mavaitro=vaitro.mavaitro";
%> 
<sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/hoclaptrinhonline"
	user="root"
	password="phihung123789"/>
<sql:query var="items" sql="<%= query %>"/>
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
	<div class="row" id="noidung">
		<div class="panel panel-primary">
			<div class="panel-heading" style="text-align:center;">Thông tin tài khoản</div>
				<table class="table table-bordered">
				<c:forEach items="${items.rows}" var="row">
					<tr>
						<th>Tên tài khoản</th>
						<td>${row.Tentaikhoan}</td>
					</tr>
					<tr>
						<th>Họ và tên</th>
						<td>${row.Hoten}</td>
					</tr>
					<tr>
						<th>Ngày sinh</th>
						<td>${row.Ngaysinh}</td>
					</tr>
					<tr>
						<th>Địa chỉ</th>
						<td>${row.Diachi}</td>
					</tr>
					<tr>
						<th>Email</th>
						<td>${row.Email}</td>
					</tr>
					<tr>
						<th>Điện thoại</th>
						<td>${row.SDT}</td>
					</tr>
					<tr>
						<th>Vai trò</th>
						<td>${row.Tenvaitro}</td>
					</tr>
				</c:forEach>
				</table>
				<button id="btnUpdate" class="btn btn-warning pull-right" onclick="window.location.href='suataikhoan.jsp?command=update&TenTK=<%= objUser.getUsername()%>'">Chỉnh sửa thông tin</button>
		</div>
	</div>
</body>
<script type="text/javascript">
	$('#btnUpdate').click(function(){
		var url;
		url = "thaydoithongtin.jsp";
		$('#noidung').load(url);
	});
	$('#btnChange').click(function(){
		var url;
		url = "doimatkhau.jsp";
		$('#noidung').load(url);
	});
</script>
</html>