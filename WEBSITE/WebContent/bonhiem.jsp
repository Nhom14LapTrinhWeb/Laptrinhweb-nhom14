<%@page import="Models.vaitro"%>
<%@page import="dao.vaitroDAO"%>
<%@page import="Models.Users"%>
<%@page import="dao.UsersDAO"%>
<%@page import="Models.ngonngu"%>
<%@page import="dao.ngonnguDAO"%>
<%@page import="Models.thongbao"%>
<%@page import="dao.thongbaoDAO"%>
<%@page import="DayLaNhom14.User"%>
<%@page import="org.apache.taglibs.standard.lang.jpath.adapter.Convert"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%	User objUser = (User)session.getAttribute("userLogin"); 
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
			<title>Quản lý thông báo</title>

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
 	vaitroDAO vtdao = new vaitroDAO();
 	String TenTK="";
 	if(request.getParameter("TenTK")!=null)
 	{
 		TenTK=request.getParameter("TenTK");
 	}
 	UsersDAO udao = new UsersDAO();
 	Users u = udao.getChitietCaNhan(TenTK);
	%>
	<div class="container">
		<div class="col-md-6 col-md-offset-3">
	     	<div class="row">
	     		<form class="form-horizontal" action="ManagerUsersServlet" method="post">
	       			<h2 class="head-form" align="center">Bổ nhiệm</h2>
	       			<div class="form-group">
	      				<input class="form-control" id="tentaikhoan1" name="tentaikhoan1" type="text" value=<%=u.getTentaikhoan()%> disabled>
	    				
	    			</div>
	          		<h4 class="head-form" align="center">Chọn quyền truy cập</h4>
	    			<div class="form-group">
					  <select class="form-control" id="vaitro" name="vaitro">
					 
					    <option>VT01</option>
					    <option>VT02</option>
					  </select>
					</div>
	    				<input type="hidden" value=<%=u.getTentaikhoan()%> name="username" id="username">
	    				<input type="hidden" value="quyen" name="command">
	        			<input type="submit"  class="btn btn-success btn-lg center-block" value="Thêm" />
	        		</form>
	      		</div>
	      </div>
    </div>
</body>
</html>