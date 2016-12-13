<%@page import="DayLaNhom14.User"%>
<%@page import="Models.dangkihoc"%>
<%@page import="dao.dangkihocDAO"%>
<%@page import="Models.khoahoc"%>
<%@page import="dao.khoahocDAO"%>
<%@page import="Models.Loaikhoahoc"%>
<%@page import="dao.LoaikhoahocDAO"%>
<%@page import="Models.Users"%>
<%@page import="dao.UsersDAO"%>
<% User object = (User)session.getAttribute("userLogin"); %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Danh sách học viên tham gia khóa học</title>
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
%>
<form action="DanhsachServlet" method="post">
	<div class="panel panel-primary" style="text-align: center;">
	    <div class="panel-heading" >Danh sách tham gia khóa học</div>
		<table border="1" class="table">
			<tr style="text-align: center;">
				<th>Tên tài khoản</th>	
				<th>Mã khóa học</th>
				<th>Điểm tổng</th>
				<th>Tình trạng học phí</th>
				<th>Trạng thái</th>
				<th>Sửa đổi</th>
				<th>Hủy tham gia</th>
				<th>Xóa khỏi hệ thống</th>	                
			</tr>
			<%for(dangkihoc dkh : dkhdao.getListThamGia()){
				

				%>
			

				<tr style="text-align: center;">
								
					<td><%= dkh.getTentaikhoan() %></td>	
					<td><%= dkh.getMakhoahoc()%></td>	
					<td><%= dkh.getDiemtong() %></td>
					<% if(dkh.getTinhtranghocphi()==1){ %>
					<td>Đã thanh toán</td>
					<%}else{%>
						<td>Chưa thanh toán</td>
					<%} %>
					
					<% if(dkh.getTrangthai()==1){ %>
					<td>Đang tham gia</td>
					<%}else{%>
						<td>Đã hủy</td>
					<%} %>                
					<td><input type="button" name="operation" value="Sửa" onclick="window.location.href='suadangkihoc.jsp?MaKH=<%=dkh.getMakhoahoc()%>&TenTK=<%= dkh.getTentaikhoan() %>'"></td>
					<td><input type="button" name="operation" value="Hủy" onclick="window.location.href='DangkihocServlet?command=huy&MaKH=<%=dkh.getMakhoahoc()%>&TenTK=<%= dkh.getTentaikhoan() %>'"></td>
					<td><input type="button" name="operation" value="Xóa" onclick="window.location.href='DangkihocServlet?command=delete&MaKH=<%=dkh.getMakhoahoc()%>&TenTK=<%= dkh.getTentaikhoan() %>&vaitro=VT03'"></td>			
				</tr>
			<%
				}
			%>
		</table>
		
	</div>

</form>
  	
	<div class="row" id="chucnang">
                <ul class="nav navbar-nav">
                  <li><button class="btn btn-primary" onclick="window.location.href='themdangkihoc.jsp'">Thêm </button></li>
                  <li><button class="btn btn-primary" onclick="window.location.href='quantrivien.jsp'">Reload</button></li>
                </ul>
        </div>
</div>
</body>
</html>