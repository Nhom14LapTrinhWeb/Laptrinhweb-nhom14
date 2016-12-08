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
<%
	UsersDAO userdao = new UsersDAO();
	
%>

	<div class="panel panel-primary" style="text-align: center;">
	    <div class="panel-heading" >Danh sách các thành viên của website</div>
		<table border="1" class="table">
			<tr>
				<th>Tên tài khoản</th>	
				<th>Họ Tên</th>
				<th>Ngày sinh</th>
				<th>Địa chỉ</th>
				<th>Email</th>
				<th>Số điện thoại</th>	
				<th>Mật khẩu</th>		
				<th>Mã Chức vụ</th>	
				<th>Sửa đổi</th>
				<th>Xóa</th>	                
			</tr>
			<%for(Users u : userdao.getListUserByVaiTro("VT02")){
				

				%>
			

				<tr>
								
					<td><%= u.getTentaikhoan() %></td>	
					<td><%= u.getHoten() %></td>	
					<td><%= u.getNgaysinh()%></td>
					<td><%= u.getDiachi() %></td>
					<td><%= u.getEmail() %></td>
					<td><%= u.getSDT() %></td>	 
					<td><%= u.getMatkhau()%></td>
					<td><%= u.getMavaitro() %></td>                    
					<td><input type="button" name="operation" value="Sửa" onclick="window.location.href='suataikhoan.jsp?command=update&TenTK=<%= u.getTentaikhoan()%>'"></td>
					<td><input type="button" name="operation" value="Xóa" onclick="window.location.href='/DoAnNhom14/ManagerUsersServlet?command=delete&TenTK=<%= u.getTentaikhoan()%>'"></td>							
				</tr>
			<%
				}
			%>
		</table>
		
	</div>
  	
	<div class="row" id="chucnang">
                <ul class="nav navbar-nav">
                  <li><button class="btn btn-primary" onclick="window.location.href='dangki.jsp'">Thêm tài khoản</button></li>
                  <li><button class="btn btn-primary" onclick="window.location.href='quantrivien.jsp'">Reload</button></li>
                </ul>
        </div>
</body>
</html>