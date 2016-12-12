<%@page import="DayLaNhom14.User"%>
<%@page import="Models.khoahoc"%>
<%@page import="dao.khoahocDAO"%>
<%@page import="Models.Loaikhoahoc"%>
<%@page import="dao.LoaikhoahocDAO"%>
<%@page import="Models.Users"%>
<%@page import="dao.UsersDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%	User objUser = (User)session.getAttribute("userLogin");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
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
	khoahocDAO khdao = new khoahocDAO();
	UsersDAO udao = new UsersDAO();
	Users u = udao.getChitietCaNhan(objUser.getUsername());
%>
<form action="DanhsachServlet" method="post">
	<div class="panel panel-primary" style="text-align: center;">
	    <div class="panel-heading" >Danh sách khóa học đang mở</div>
		<table border="1" class="table">
			<tr style="text-align: center;">
				<th>Mã KH</th>	
				<th>Tên KH</th>
				<th>Học phí</th>
				<th>Lịch học</th>
				<th>Thời gian mở</th>
				<th>Thời gian KT</th>
				<th>Tên GV</th>
				<th>Mã ngôn ngữ</th>
				<th>Mô tả</th>
				<th>Loại KH</th>
				<th>Sửa đổi</th>
				<th>Xóa</th>	                
			</tr>
			<%for(khoahoc kh : khdao.getListKhoaHoc()){
				

				%>
			

				<tr style="text-align: center;">
								
					<td><%= kh.getMakhoahoc() %></td>	
					<td><%= kh.getTenkhoahoc() %></td>	
					<td><%= kh.getHocphi() %></td>
					<td><%= kh.getLichhoc() %></td>
					<td><%= kh.getThoigianmo() %></td>
					<td><%= kh.getThoigianketthuc() %></td>
					<td><%= kh.getTengiangvien() %></td>
					<td><%= kh.getMangonngu() %></td>
					<td><%= kh.getMota() %></td>
					<td><%= kh.getLoaikhoahoc() %></td>                 
					<td><input type="button" name="operation" value="Sửa" onclick="window.location.href='suakhoahoc.jsp?command=update&MaKH=<%= kh.getMakhoahoc()%>&vaitro=<%= u.getMavaitro() %>'"></td>
					<td><input type="button" name="operation" value="Xóa" onclick="window.location.href='/DoAnNhom14/ManagerKhoahocServlet?command=delete&MaKH=<%= kh.getMakhoahoc()%>&vaitro=<%= u.getMavaitro() %>'"></td>			
				</tr>
			<%
				}
			%>
		</table>
		
	</div>

</form>
  	
	<div class="row" id="chucnang">
                <ul class="nav navbar-nav">
                  <li><button class="btn btn-primary" onclick="window.location.href='dangkimokhoahoc.jsp'">Thêm khóa học</button></li>
                  <li><button class="btn btn-primary" onclick="window.location.href='quantrivien.jsp'">Reload</button></li>
                </ul>
        </div>
</div>
</body>
</html>