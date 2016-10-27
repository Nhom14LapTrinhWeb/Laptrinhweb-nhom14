<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/hoclaptrinhonline"
	user="root"
	password="phihung123789"/>
<sql:query var="items" sql="SELECT * FROM khoahoc"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Danh sách Khóa học đang mở</title>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     
     <script type="text/javascript" src="jquery/jquery.min.js"></script>
	 <script type="text/javascript" src="jquery/script.js"></script>

    <script src="bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="jquery/angular.min.js"></script>

    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
  	<div class="panel panel-primary" style="text-align: center;">
	    <div class="panel-heading" >Danh sách các Khóa học của website</div>
		<table border="1" class="table">
			<tr>
				<th>Mã khóa học</th>	
				<th>Tên khóa học</th>
				<th>Học phí</th>
				<th>Lịch học</th>
				<th>Thời gian mở</th>
				<th>Thời gian kết thúc</th>	
				<th>Tên giảng viên</th>		
				<th>Mã ngôn ngữ</th>
				<th>Mô tả</th>
						                
			</tr>
			<c:forEach items="${items.rowsByIndex}" var="row">			
				<tr>
					<c:forEach items="${row}" var="col">			
					<td>${col}</td>			                     
					</c:forEach>							
				</tr>
				
			</c:forEach>
		</table>
</div>
</body>
</html>