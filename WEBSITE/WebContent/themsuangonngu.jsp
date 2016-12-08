<%@page import="Models.ngonngu"%>
<%@page import="dao.ngonnguDAO"%>
<%@page import="Models.thongbao"%>
<%@page import="dao.thongbaoDAO"%>
<%@page import="DayLaNhom14.User"%>
<%@page import="org.apache.taglibs.standard.lang.jpath.adapter.Convert"%>

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
 	String MaNN="";
 	if(request.getParameter("MaNN")!=null)
 	{
 		MaNN=request.getParameter("MaNN");
 	}
 	ngonnguDAO nndao = new ngonnguDAO();
 	ngonngu nn = nndao.getChiTietNgonNgu(MaNN);
 	
 		String commandd = "";
	 if(request.getParameter("commandd")!=null)
	 {
		 commandd=request.getParameter("commandd");
	 }
	 if(commandd.equals("insert")){
	%>
	<div class="container">
		<div class="col-md-6 col-md-offset-3">
	     	<div class="row">
	     		<form class="form-horizontal" action="ManagerNgonnguServlet" method="post">
	       			<h2 class="head-form" align="center">Thêm ngôn ngữ</h2>
	       			<div class="form-group">
	      				<input class="form-control" id="mangonngu" name="mangonngu" type="text" placeholder="Mã ngôn ngữ">
	    				
	    			</div>
	          		<div class="form-group">
	         			
	      				<input class="form-control" id="tenngonngu" name="tenngonngu" type="text" placeholder="Tên ngôn ngữ">
	    				<fieldset disabled></fieldset>
	    			</div>
	    				<input type="hidden" value="insert" name="command">
	        			<input type="submit"  class="btn btn-success btn-lg center-block" value="Thêm" />
	        		</form>
	      		</div>
	      </div>
    </div>
    <%}else{ %>     	
    	<div class="container">
		<div class="col-md-6 col-md-offset-3">
	     	<div class="row">
	     		<form class="form-horizontal" action="ManagerNgonnguServlet" method="post">
	       			<h2 class="head-form" align="center">Sửa Ngôn ngữ</h2>
	       			<div class="form-group">
	      				<input class="form-control" id="mangonngu1" name="mangonngu1" type="text" value="<%= nn.getMangonngu() %>" disabled>
	    				
	    			</div>
	          		<div class="form-group">
	         			
	      				<input class="form-control" id="tenngonngu" name="tenngonngu" type="text" value="<%= nn.getTenngonngu() %>">
	    				<fieldset disabled></fieldset>
	    			</div>
	    				<input type="hidden" id="mangonngu" name="mangonngu" value="<%= nn.getMangonngu() %>"> 
	    				<input type="hidden" value="update" name="command">
	        			<input type="submit"  class="btn btn-success btn-lg center-block" value="Xác nhận" />
	        		</form>
	      		</div>
	      </div>
    </div>
    <%} %>			
</body>
</html>