<%@page import="Models.loaitailieu"%>
<%@page import="dao.loaitailieuDAO"%>
<%@page import="Models.danhmucsapxep"%>
<%@page import="dao.danhmucsapxepDAO"%>
<%@page import="Models.Loaikhoahoc"%>
<%@page import="dao.LoaikhoahocDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<sql:setDataSource var="snapshot"
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/hoclaptrinhonline"
	user="root"
	password="phihung123789"/>
<sql:query dataSource="${snapshot}" var="items" sql="SELECT Makhoahoc,Hinhanh,Tenkhoahoc,Tengiangvien,Lichhoc,Thoigianmo FROM khoahoc"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Thông tin loại khóa học</title>
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
			<%
		loaitailieuDAO loai = new loaitailieuDAO();
	%>
	
    		<div class="col-md-3 col-sm-3 col-xs-3">
    			<ul class="nav nav-pills nav-stacked">
				  <li class="active"><a name="xem"><b>Danh sách loại tài liệu</b></a></li>
				  <% 
				  	for(loaitailieu l : loai.getListLoaitailieu()){
				  %>
				  <li><a id="1" href="thongtintailieu.jsp?Loaikhoahoc=<%=l.getMaloai()%>&type=danhmuc"><b><%=l.getTenloai()%></b></a></li>
				  <%
				  	}
				  %>
				</ul>
    		</div>
			
</body>
</html>