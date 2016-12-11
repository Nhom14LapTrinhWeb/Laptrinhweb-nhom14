<%@page import="java.util.concurrent.ExecutionException"%>
<%@page import="dao.thongbaoDAO"%>
<%@page import="Models.thongbao"%>
<%@page import="DayLaNhom14.User"%>
<%	User objUser = (User)session.getAttribute("userLogin"); 
	try
	{
		objUser.getVaitro();
	}
	catch(Exception ex)
	{
		response.sendRedirect("index.jsp");
	}%> 
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
	try
	{
	thongbaoDAO tbdao = new thongbaoDAO();
	if(objUser.getUsername().equals("admin")){
%>
	<div class="panel panel-primary" style="text-align: center;">
	    <div class="panel-heading" >Danh sách thông báo</div>
		<table border="1" class="table">
			<tr>
				<th>Mã thông báo</th>	
				<th>Tên thông báo</th>
				<th>Nội dung</th>	
				<th>Sửa đổi</th>
				<th>Xóa</th>	                
			</tr>
			<%for(thongbao tb : tbdao.getListThongBao()){
				

				%>
			

				<tr>
								
					<td><%= tb.getMathongbao() %></td>	
					<td><%= tb.getTenthongbao() %></td>	
					<td><%=tb.getNoidung()%></td>               
					<td><input type="button" name="operation" value="Sửa" onclick="window.location.href='themsuathongbao.jsp?commandd=update&MaTB=<%= tb.getMathongbao()%>'"></td>
					<td><input type="button" name="operation" value="Xóa" onclick="window.location.href='/DoAnNhom14/ManagerThongbaoServlet?command=delete&MaTB=<%=  tb.getMathongbao()%>'"></td>							
				</tr>
			<%}%>
		</table>
		
	</div>
  	
	<div class="row" id="chucnang">
                <ul class="nav navbar-nav">
                  <li><button class="btn btn-primary" onclick="window.location.href='themsuathongbao.jsp?commandd=insert'">Thêm</button></li>
                  <li><button class="btn btn-primary" onclick="window.location.href='quantrivien.jsp'">Reload</button></li>
                </ul>
        </div>
<%}else{ %>
<div class="row">
	<div class="panel panel-primary">
		<div class="panel-heading" style="text-align: center;">Xem thông báo mới</div>
			<table class="table" border="1">
					<tr>
						<th>Tên</th>
						<th>Nội dung</th>
					</tr>
				<%for(thongbao tb : tbdao.getListThongBao()){ %>
					<tr>
						<td><%= tb.getTenthongbao() %></td>
						<td><%= tb.getNoidung() %></td>
					</tr>
					
					<%} %>
			</table>							
	</div>
</div>
<%}
}
catch(Exception ex){}%>
</body>
</html>