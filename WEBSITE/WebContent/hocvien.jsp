<%@page import="DayLaNhom14.User"%>
<%	User objUser = (User)session.getAttribute("userLogin"); %> 
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%> 
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
    	<!-- made nav -->
	    <nav class="navbar navbar-default">
	      <div class="container">
	          <div class="container-fluid">
	            <div class="navbar-header">
	              <a class="navbar-brand" href="hocvien.jsp">CODE.VN</a>
	               <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-codevn-navbar-collapse-1" aria-expanded="false">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
			      </button>
	            </div>
	            <div class="collapse navbar-collapse" id="bs-codevn-navbar-collapse-1">
		            <form class="navbar-form navbar-left">
			                <div class="form-group">
			                    <input type="text" class="form-control" placeholder="Search">
			                </div>
			                  <a href="#" class="btn btn-info btn-md">
			                    <span class="glyphicon glyphicon-search"></span>
			                  </a>
			             </form>
			            <ul class="nav navbar-nav">
			              <li><a href="#" id="mienphi">Học miễn phí</a></li>
			              <li><a href="#" id="khoahoc">Khóa học</a></li> 
			              <li><a href="#" id="huongdan1">Hướng dẫn</a></li>
			              <li><a href="#" id="gopy">Góp ý</a></li>
			            </ul>
			            <ul class="nav navbar-nav navbar-right">
			              <li>
			               
				              <div class="dropdown">
				             
					           		<button id="dropbtn" class="btn btn-info btn-md dropdown-toggle" type="button" data-toggle="dropdown">
					              		<%
				              				if(objUser.getUsername()!=null){
				              			%>
					              		<span class="glyphicon glyphicon-user"></span>
					              		<%= objUser.getUsername() %>
					              		<span class="caret"></span>
					              		<%} %>
				              		</button>
				              		
				              		<ul class="dropdown-menu" id="dr1">
				              			<li><a id="mypage" href="#"><b>Thông báo mới</b></a></li>
									    <li><a id="thongtin" href="#"><b>Thông tin cá nhân</b></a></li>
									    <li><a id="khoahoccuatoi" href="#"><b>Khóa học của tôi</b></a></li>
									    <li><a id="xemdiem" href="#"><b>Xem điểm</b></a></li>
									    <li><a id="baitap" href="#"><b>Xem bài tập</b></a></li>
									    <li><a id="out" href="Logout"><b>Thoát</b></a></li>
				              		</ul>
			               		</div>
			               		
			               </li>
			            </ul>
			            <div style="clear: both"></div>
		            </div>  
	          </div>
	        </div>
	    </nav>  	
	</div>
	<!-- End navbar -->
	<!-- menu list chức năng -->
	<div class="container">
    	<div id="noidung"></div>
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
	var url;
	url = "thongtinkhoahoc.jsp";
	$("#noidung").load(url);
	$('#thongbao').click(function(){
		var url;
		url = "thongbao.jsp";
		$("#noidung").load(url);
	});
	$('#mypage').click(function(){
		var url;
		url = "thongbao.jsp";
		$("#noidung").load(url);
	});
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
		url = "thongtinkhoahoc.jsp";
		$("#noidung").load(url);
	});
	$('#khoahoccuatoi').click(function(){
		var url;
		url = "khoahoccuatoi.jsp";
		$("#noidung").load(url);
	});
	$('#baitap').click(function(){
		var url;
		url = "baitap.jsp";
		$("#noidung").load(url);
	});
	$('#dropbtn').click(function(){
		$("#dr1").slideToggle("0");
	});
	$('#dr1 li a').click(function(){
		$("#dr1").slideToggle("0");
	});
});
</script>
</html>