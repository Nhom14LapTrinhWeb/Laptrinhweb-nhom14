<%@ page language ="java" import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/hoclaptrinhonline"
	user="root"
	password="phihung123789"/>
<sql:query var="items" sql="SELECT * FROM taikhoan"/>
=======
	url="jdbc:mysql://localhost/cuoiki"
	user="root"
	password="phihung123789"/>
<sql:query var="items" sql="SELECT * FROM hocvien"/>
<sql:query var="items1" sql="SELECT * FROM giangvien"/>
>>>>>>> 467f78f6c2c9eb143a32858ad58f2e78530105d4
<sql:query var="items2" sql="SELECT * FROM khoahoc"/>
<sql:query var="items3" sql="SELECT * FROM thamgia"/>
<sql:query var="items4" sql="SELECT * FROM ngonngu"/>
<sql:query var="items5" sql="SELECT * FROM gv_nn"/>
<sql:query var="items6" sql="SELECT * FROM tailieu"/>
<sql:query var="items7" sql="SELECT * FROM loaitailieu"/>
<sql:query var="items8" sql="SELECT * FROM baitap"/>
<sql:query var="items9" sql="SELECT * FROM bainop"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<c:out value="Database Học viên"></c:out>
	<table border="1">
		<tr>
			<c:forEach items="${items.columnNames}" var="name">	
			<th>${name }</th>						                
			</c:forEach>
		</tr>
		<c:forEach items="${items.rowsByIndex}" var="row">			
			<tr>
				<c:forEach items="${row}" var="col">			
				<td>${col}</td>			                     
				</c:forEach>							
			</tr>
			
		</c:forEach>
	</table>
	
	<c:out value="Database Khóa học"></c:out>
	<table border="1">
		<tr>
			<c:forEach items="${items2.columnNames}" var="name">	
			<th>${name }</th>						                
			</c:forEach>
		</tr>
		<c:forEach items="${items2.rowsByIndex}" var="row">			
			<tr>
				<c:forEach items="${row}" var="col">			
				<td>${col}</td>			                     
				</c:forEach>							
			</tr>
			
		</c:forEach>
	</table>
	<c:out value="Danh sách học viên đăng kí khóa học"></c:out>
	<table border="1">
		<tr>
			<c:forEach items="${items3.columnNames}" var="name">	
			<th>${name }</th>						                
			</c:forEach>
		</tr>
		<c:forEach items="${items3.rowsByIndex}" var="row">			
			<tr>
				<c:forEach items="${row}" var="col">			
				<td>${col}</td>			                     
				</c:forEach>							
			</tr>
			
		</c:forEach>
	</table>
	<c:out value="Database Ngôn ngữ"></c:out>
	<table border="1">
		<tr>
			<c:forEach items="${items4.columnNames}" var="name">	
			<th>${name }</th>						                
			</c:forEach>
		</tr>
		<c:forEach items="${items4.rowsByIndex}" var="row">			
			<tr>
				<c:forEach items="${row}" var="col">			
				<td>${col}</td>			                     
				</c:forEach>							
			</tr>
			
		</c:forEach>
	</table>
	<c:out value="Database Danh sách giảng viên và loại ngôn ngữ đang dạy"></c:out>
	<table border="1">
		<tr>
			<c:forEach items="${items5.columnNames}" var="name">	
			<th>${name }</th>						                
			</c:forEach>
		</tr>
		<c:forEach items="${items5.rowsByIndex}" var="row">			
			<tr>
				<c:forEach items="${row}" var="col">			
				<td>${col}</td>			                     
				</c:forEach>							
			</tr>
			
		</c:forEach>
	</table>
	<c:out value="Database Danh sách tài liệu"></c:out>
	<table border="1">
		<tr>
			<c:forEach items="${items6.columnNames}" var="name">	
			<th>${name }</th>						                
			</c:forEach>
		</tr>
		<c:forEach items="${items6.rowsByIndex}" var="row">			
			<tr>
				<c:forEach items="${row}" var="col">			
				<td>${col}</td>			                     
				</c:forEach>							
			</tr>
			
		</c:forEach>
	</table>
	<c:out value="Database Loại tài liệu"></c:out>
	<table border="1">
		<tr>
			<c:forEach items="${items7.columnNames}" var="name">	
			<th>${name }</th>						                
			</c:forEach>
		</tr>
		<c:forEach items="${items7.rowsByIndex}" var="row">			
			<tr>
				<c:forEach items="${row}" var="col">			
				<td>${col}</td>			                     
				</c:forEach>							
			</tr>
			
		</c:forEach>
	</table>
	<c:out value="Database Bài tập"></c:out>
	<table border="1">
		<tr>
			<c:forEach items="${items8.columnNames}" var="name">	
			<th>${name }</th>						                
			</c:forEach>
		</tr>
		<c:forEach items="${items8.rowsByIndex}" var="row">			
			<tr>
				<c:forEach items="${row}" var="col">			
				<td>${col}</td>			                     
				</c:forEach>							
			</tr>
			
		</c:forEach>
	</table>
	<c:out value="Database Bài nộp"></c:out>
	<table border="1">
		<tr>
			<c:forEach items="${items9.columnNames}" var="name">	
			<th>${name }</th>						                
			</c:forEach>
		</tr>
		<c:forEach items="${items9.rowsByIndex}" var="row">			
			<tr>
				<c:forEach items="${row}" var="col">			
				<td>${col}</td>			                     
				</c:forEach>							
			</tr>
			
		</c:forEach>
	</table>
</body>
</html>