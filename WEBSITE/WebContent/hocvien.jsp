<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
	<div class="row"> 
	    <nav class="navbar navbar-default">
	      <div class="container">
	          <div class="container-fluid">
	            <div class="navbar-header">
	              <a class="navbar-brand" href="index.jsp">CODE.VN</a>
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
	              <li><a href="#" id="guitinnhan">Gửi tin nhắn</a></li>
	            </ul>
	            <ul class="nav navbar-nav navbar-right">
		           <li>
		           		<p class="pull-right" style="padding: 10px;">
		              		<span class="glyphicon glyphicon-user"></span>
		              		Tên học viên
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
    	<div class="content col-md-12 ">
    		<div class="content-left col-md-3 col-sm-6 col-xs-6">
    			<ul class="nav nav-pills nav-stacked">
				  <li class="active"><a href="#"><b>Trang của bạn</b></a></li>
				  <li><a href="#"><b>Thông tin cá nhân</b></a></li>
				  <li><a href="#"><b>Đăng ký khóa học</b></a></li>
				  <li><a href="#"><b>Khóa học của tôi</b></a></li>
				  <li><a href="#"><b>Xem điểm</b></a></li>
				  <li><a href="#"><b>Xem bài tập</b></a></li>
				  <li><a href="#"><b>Thoát</b></a></li>
				</ul>
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
</html>