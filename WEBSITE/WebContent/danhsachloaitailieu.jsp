<%@page import="Models.loaitailieu"%>
<%@page import="dao.loaitailieuDAO"%>
<%@page import="Models.Users"%>
<%@page import="dao.UsersDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Danh sách loại tài liệu</title>
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
	loaitailieuDAO ltldao = new loaitailieuDAO();
%>
	<div class="panel panel-primary" style="text-align: center;">
	    <div class="panel-heading" >Danh sách loại tài liệu</div>
		<table border="1" class="table">
			<tr>
				<th>Mã loại</th>	
				<th>Tên loại</th>
				<th>Mô tả</th>
				<th>Sửa đổi</th>
				<th>Xóa</th>	                
			</tr>
			<%for(loaitailieu tl : ltldao.getListLoaitailieu()){
				

				%>
			

				<tr>
								
					<td><%= tl.getMaloai() %></td>	
					<td><%= tl.getTenloai() %></td>	
					<td><%=tl.getMota()%></td>               
					<td><input type="button" name="operation" value="Sửa" onclick="window.location.href='themsualoaitailieu.jsp?commandd=update&Maloai=<%= tl.getMaloai()%>'"></td>
					<td><input type="button" name="operation" value="Xóa" onclick="window.location.href='ManagerLoaitailieuServlet?command=delete&Maloai=<%= tl.getMaloai()%>'"></td>							
				</tr>
			<%
				}
			%>
		</table>
		
	</div>
  	
	<div class="row" id="chucnang">
                <ul class="nav navbar-nav">
                  <li><button class="btn btn-primary" onclick="window.location.href='themsualoaitailieu.jsp?commandd=insert'">Thêm</button></li>
                  <li><button class="btn btn-primary" onclick="window.location.href='quantrivien.jsp'">Reload</button></li>
                </ul>
        </div>
</body>
</html>