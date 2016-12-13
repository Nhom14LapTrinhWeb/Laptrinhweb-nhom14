<%@page import="Models.dangkihoc"%>
<%@page import="DayLaNhom14.User"%>
<%@page import="dao.dangkihocDAO"%>
<%@page import="Models.khoahoc"%>
<%@page import="dao.khoahocDAO"%>
<%@page import="Models.Loaikhoahoc"%>
<%@page import="dao.LoaikhoahocDAO"%>
<%@page import="Models.Users"%>
<%@page import="dao.UsersDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<% User object = (User)session.getAttribute("userLogin"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Danh sách khóa học</title>
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
	dangkihocDAO dkhdao = new dangkihocDAO();
	khoahocDAO khdao = new khoahocDAO();
%>
<form action="DanhsachServlet" method="post">
	<div class="panel panel-primary" style="text-align: center;">
	    <div class="panel-heading" >Danh sách khóa học đã đăng kí</div>
		<table border="1" class="table">
			<tr style="text-align: center;">
				<th>Mã khóa học</th>	
				<th>Tên khóa học</th>	
				<th>Tình trạng thanh toán</th>
				<th>Điểm</th>
				<th>Thao tác</th>	                
			</tr>
			<%for(dangkihoc dkh : dkhdao.getListThamGiaByTen(object.getUsername())){%>
				<tr style="text-align: center;">
								
					<td><%= dkh.getMakhoahoc() %></td>	
					<%khoahoc kh = khdao.getChitietkhoahoc(dkh.getMakhoahoc());%>
					<td><%= kh.getTenkhoahoc() %></td>	
					 <td><%= (dkh.getTinhtranghocphi()==1) ? "Đã thanh toán":"Chưa thanh toán" %></td>  
					 <%if(dkh.getTinhtranghocphi()==1){ %>
					  <td><%= dkh.getDiemtong() %></td>      
					<td><input type="button" name="operation" value="Học" onclick="window.location.href='loaitailieu.jsp?MaKH=<%= kh.getMakhoahoc()%>&TenTK=<%=dkh.getTentaikhoan()%>'"></td>
					<%}else{ %>
					<td>Chưa có</td> 
					<td><input type="button" name="operation" value="Hủy" onclick="window.location.href='DangkihocServlet?command=delete&MaKH=<%= dkh.getMakhoahoc()%>&TenTK=<%=dkh.getTentaikhoan()%>&vaitro=VT01'"></td>			
					<%} %>
				</tr>
			<%
				}
			%>
		</table>
		
	</div>

</form>
</div>
</body>
</html>