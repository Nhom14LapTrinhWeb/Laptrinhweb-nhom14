<%@page import="Models.danhmucsapxep"%>
<%@page import="Models.Loaikhoahoc"%>
<%@page import="dao.danhmucsapxepDAO"%>
<%@page import="dao.LoaikhoahocDAO"%>
<%@page import="dao.vaitroDAO"%>
<%@page import="Models.ngonngu"%>
<%@page import="dao.ngonnguDAO"%>
<%@page import="DayLaNhom14.User"%>
<%@page import="dao.UsersDAO"%>
<%@page import="Models.Users"%>
<%@page import="org.apache.taglibs.standard.lang.jpath.adapter.Convert"%>
<%@page import="Models.khoahoc"%>
<%@page import="dao.khoahocDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%	User objUser = (User)session.getAttribute("userLogin"); 
	String query = "SELECT tentaikhoan from taikhoan WHERE tentaikhoan='"+objUser.getUsername()+"'";
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta charset="utf-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport"
				content="width=device-width, initial-scale=1">
			<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
			<meta name="description" content="">
			<title>Đăng kí học</title>

			<meta name="author" content="">
			<!-- js -->
			<script src="jquery/jquery.min.js"></script>
			<script src="bootstrap/js/bootstrap.min.js"></script>
			<script src="jquery/script.js"></script>
			<script src="jquery/main.js"></script>
			<script type="text/javascript"
				src="jquery/angular.min.js">
			</script>
			<script src="jquery/jquery.js"></script>

			<link rel="shortcut icon" href="ico/favicon.png">
			<!-- css -->
			<link rel="stylesheet" href="css/main.css">
			<link href="bootstrap/css/bootstrap.min.css"
				rel="stylesheet">
			<link href="css/style.css" rel="stylesheet">
</head>
<body>
 <%
 			UsersDAO usersdao = new UsersDAO();
 			khoahocDAO khdao = new khoahocDAO();
	%>
	<div class="container">
		<div class="col-md-6 col-md-offset-3">
	     	<div class="row">
	     		<form class="form-horizontal" action="DangkihocServlet" method="post">
	       			<h2 class="head-form" align="center">Thêm thành viên vào khóa học</h2>
	       			<h4 class="head-form" align="center">Vui lòng chọn học viên</h4>
	       			<div class="form-group">
					  <select class="form-control" id="tentaikhoan" name="tentaikhoan">
					  <%for(Users u : usersdao.getListUserByVaiTro("VT01")) {%>
					    <option><%= u.getTentaikhoan() %></option>
					    
					    <%} %>
					  </select>
					</div>
					<h4 class="head-form" align="center">Vui lòng chọn khóa học</h4>
	       			<div class="form-group">
					  <select class="form-control" id="makhoahoc" name="makhoahoc">
					  <%for(khoahoc kh : khdao.getListKhoaHoc()) {%>
					    <option><%= kh.getMakhoahoc() %></option>
					    
					    <%} %>
					  </select>
					</div>
					<h4 class="head-form" align="center">Tình trạng học phí</h4>
	       			<div class="form-group">
					  <select class="form-control" id="tinhtranghocphi" name="tinhtranghocphi"> 
					    <option>0</option>
					    <option>1</option>				
					  </select>
					</div>
					<h4 class="head-form" align="center">Trạng thái</h4>
	       			<div class="form-group">
					  <select class="form-control" id="trangthai" name="trangthai"> 
					    <option>0</option>
					    <option>1</option>				
					  </select>
					</div>
	    				<input type="hidden" value="insert1" name="command">
	        			<input type="submit"  class="btn btn-success btn-lg center-block" value="Đăng ký" />
	        		</form>
	      		</div>
	      </div>
    </div>     				
</body>
</html>