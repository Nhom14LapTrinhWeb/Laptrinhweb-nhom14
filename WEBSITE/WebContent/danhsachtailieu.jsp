<%@page import="Models.tailieu"%>
<%@page import="dao.tailieuDAO"%>
<%@page import="Models.loaitailieu"%>
<%@page import="dao.loaitailieuDAO"%>
<%@page import="Models.Users"%>
<%@page import="dao.UsersDAO"%>
<%@page import="DayLaNhom14.User"%>
<%
	User objUser = (User)session.getAttribute("userLogin");
%>
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
<title>Danh sách tài liệu</title>
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
	tailieuDAO tldao = new tailieuDAO();

	UsersDAO userdao = new UsersDAO();
	Users u = userdao.getChitietCaNhan(objUser.getUsername());
%>
	<div class="panel panel-primary" style="text-align: center;">
	    <div class="panel-heading" >Danh sách tài liệu</div>
		<table border="1" class="table">
			<tr>
				<th>Mã tài liệu</th>	
				<th>Tên tài liệu</th>
				<th>Link</th>
				<th>Mã loại tài liệu</th>
				<th>Mã khóa học</th>
				<th>Sửa đổi</th>
				<th>Xóa</th>	                
			</tr>
			<%
			for(tailieu tl : tldao.getListTaiLieuByTenTK(objUser.getUsername())){
				%>
			

				<tr>
								
					<td><%= tl.getMatailieu() %></td>	
					<td><%= tl.getTentailieu() %></td>	
					<td><%=tl.getLink()%></td>   
					<td><%=tl.getMaloaitailieu()%></td> 
					<td><%=tl.getMakhoahoc()%></td>             
					<td><input type="button" name="operation" value="Sửa" onclick="window.location.href='themsuatailieu.jsp?commandd=update&Matl=<%= tl.getMatailieu()%>&vaitro=<%=u.getMavaitro() %>'"></td>
					<td><input type="button" name="operation" value="Xóa" onclick="window.location.href='/DoAnNhom14/ManagerTailieuServlet?command=delete&Matl=<%= tl.getMatailieu()%>&vaitro=<%=u.getMavaitro() %>'"></td>							
				</tr>
			<%
				}
			%>
		</table>
		
	</div>
  	
	<div class="row" id="chucnang">
                <ul class="nav navbar-nav">
                  <li><button class="btn btn-primary" onclick="window.location.href='themsuatailieu.jsp?commandd=insert&vaitro=<%=u.getMavaitro()%>'">Thêm</button></li>
                  <li><button class="btn btn-primary" onclick="window.location.href='quantrivien.jsp'">Reload</button></li>
                </ul>
        </div>
</body>
</html>