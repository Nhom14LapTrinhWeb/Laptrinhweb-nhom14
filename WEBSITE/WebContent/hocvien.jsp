<%@page import="DayLaNhom14.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	User objUser = (User)session.getAttribute("userLogin");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- js -->
    <script src="jquery/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="jquery/script.js"></script> 
	<script src="jquery/main.js"></script>
	<script type="text/javascript" src="jquery/angular.min.js"></script>
	<title>CODE.VN</title>

    <link rel="shortcut icon" href="ico/favicon.png">
    <!-- css -->
    <link rel="stylesheet" href="css/main.css">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">	    
</head>
<body>
	<!-- Navbar menu -->
	<div class="row"> 
	    <nav class="navbar navbar-default">
	      <div class="container">
	          <div class="container-fluid">
	            <div class="navbar-header">
	              <a class="navbar-brand" href="hocvien.jsp">CODE.VN</a>
	            </div>
	            <form class="navbar-form navbar-left">
	                <div class="form-group">
	                    <input type="text" class="form-control" placeholder="Search">
	                </div>
	                  <a href="#" class="btn btn-info btn-md">
	                    <span class="glyphicon glyphicon-search"></span>
	                  </a>
	             </form>
	            <ul class="nav navbar-nav">
	              <li><a href="#" id="mienphi">Thông báo mới</a></li>
	              <li><a href="#" id="dangkikhoahoc">Đăng kí khóa học</a></li>
	            </ul>
	            <ul class="nav navbar-nav navbar-right">
		           <li>
		           		<p class="pull-right" style="padding: 10px;">
		              		<span class="glyphicon glyphicon-user"></span>
		              		<%= objUser.getUsername() %>
	              		</p>
	              </li>
	              <li><button type="button" class="btn btn-info btn-md pull-right">
	              <span class="glyphicon glyphicon-log-out"></span>
	              Thoát
	              </button>
	              </li>
		        </ul>
	            <div style="clear: both"></div>
	          </div>
	        </div>
	    </nav>  	
	</div>
	<!-- End navbar -->
	<!-- menu list chức năng -->
	<div class="container">
    	<div class="row">
    		<div class="col-md-3 content-left">
    			<ul class="nav nav-pills nav-stacked">
				  <li class="active"><a href="#"><b>Trang của bạn</b></a></li>
				  <li><a id="thongtin" href="#"><b>Thông tin cá nhân</b></a></li>
				  <li><a id="dangky" href="#"><b>Đăng ký khóa học</b></a></li>
				  <li><a id="khoahoc" href="#"><b>Khóa học của tôi</b></a></li>
				  <li><a id="xemdiem" href="#"><b>Xem điểm</b></a></li>
				  <li><a id="baitap" href="#"><b>Xem bài tập</b></a></li>
				  <li><a id="out" href="index.jsp"><b>Thoát</b></a></li>
				</ul>
    		</div>
	    	<div class=" content-right col-md-9">
	    		<div id="noidung"></div>
	    	</div>
    	</div>			
	</div>
	<!-- end menu list -->
	<!-- footer -->
	<footer>
		<div class="well-md">
		   	<h3 align="right">Copyright © <a href="http://itclass.vn">ITclass.vn</a></h3>
		   	<ol class="breadcrumb">
		   		<li class="active"><a href="#">Home</a></li>
		   		<li><a href="#">Contact</a></li>   		
		   		<li><a href="#">About</a></li>
		   		<li><a href="#">Products</a></li>
		   		<li id="time">
		   			<script type="text/javascript">
		   				document.getElementById('time').innerHTML=Date();
		   			</script>
		   		</li>
		   	</ol>
	   </div>
   </footer>
</body>
<script>
$(document).ready(function(){
	$('#thongtin').click(function(){
		var url;
		url = "thongtincanhan.jsp";
		$("#noidung").load(url);
	});
	$('#xemdiem').click(function(){
		var url;
		url = "Xemdiem.jsp";
		$("#noidung").load(url);
	});
	$('#khoahoc').click(function(){
		var url;
		url = "khoahoccuatoi.jsp";
		$("#noidung").load(url);
	});
	$('#baitap').click(function(){
		var url;
		url = "baitap.jsp";
		$("#noidung").load(url);
	});
});
</script>
</html>