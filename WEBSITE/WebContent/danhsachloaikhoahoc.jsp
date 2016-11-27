<%@page import="Models.Loaikhoahoc"%>
<%@page import="dao.LoaikhoahocDAO"%>
<%@page import="Models.Users"%>
<%@page import="dao.UsersDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/hoclaptrinhonline"
	user="root"
	password="phihung123789"/>
<sql:query var="items" sql="SELECT * FROM taikhoan WHERE Mavaitro='VT01'"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Danh sách học viên</title>
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
<div >
<%
	LoaikhoahocDAO lkhdao = new LoaikhoahocDAO();
%>
<form action="DanhsachServlet" method="post">
	<div class="panel panel-primary" style="text-align: center;">
	    <div class="panel-heading" >Danh sách các danh mục khóa học của website</div>
		<table border="1" class="table">
			<tr style="text-align: center;">
				<th>Mã Loại</th>	
				<th>Tên loại</th>
				<th>Sửa đổi</th>
				<th>Xóa</th>	                
			</tr>
			<%for(Loaikhoahoc lkh : lkhdao.getListLoaikhoahoc()){
				

				%>
			

				<tr style="text-align: center;">
								
					<td><%= lkh.getLoaiKH() %></td>	
					<td><%= lkh.getTenloai() %></td>	                 
					<td><input type="button" name="operation" value="Sửa" onclick="window.location.href='sualoaikhoahoc.jsp?command=update&LoaiKH=<%= lkh.getLoaiKH()%>'"></td>
					<td><input type="button" name="operation" value="Xóa" onclick="window.location.href='/DoAnNhom14/ManagerLoaikhoahocServlet?command=delete&LoaiKH=<%= lkh.getLoaiKH()%>'"></td>							
				</tr>
			<%
				}
			%>
		</table>
		
	</div>

</form>
  	
	<div class="row" id="chucnang">
                <ul class="nav navbar-nav">
                  <li><button class="btn btn-primary" onclick="window.location.href='themloaikhoahoc.jsp'">Thêm loại khóa học</button></li>
                  <li><button class="btn btn-primary" onclick="window.location.href='quantrivien.jsp'">Reload</button></li>
                </ul>
        </div>
</div>
</body>
</html>