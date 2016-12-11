<%@page import="DayLaNhom14.User"%>
<%	User objUser = (User)session.getAttribute("userLogin"); 
	try
	{
		if(objUser.getVaitro().equals("quantrivien"))
		{
			response.sendRedirect("quantrivien.jsp");
		}
		if(objUser.getVaitro().equals("hocvien"))
		{
			response.sendRedirect("hocvien.jsp");
		}
	}
	catch(Exception ex)
	{
		response.sendRedirect("index.jsp");
	}
%> 
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
<div style="clear: both"></div>
<!-- header -->
    <div class="row"> 
    	<!-- made nav -->
	    <nav class="navbar navbar-default">
	      <div class="container">
	          <div class="container-fluid">
	            <div class="navbar-header">
	              <a class="navbar-brand" href="giangvien.jsp">CODE.VN</a>
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
	              <li><a href="#" id="thongbao">Thông báo mới</a></li>       
	              <li><a href="Tailieu.jsp" id="tl">Tài liệu</a></li>
	              <li><a href="#" id="gopy">Góp ý</a></li>
	            </ul>
	            <ul class="nav navbar-nav navbar-right">
	              <li>
	             	<button class="btn btn-info btn-md pull-right " type="button">
	             		<%try
	             		{
	             			if(objUser.getUsername()!=null){ %>
					       <span class="glyphicon glyphicon-user"></span>
					      <%= objUser.getUsername() %>
					       <%}}
					       catch(Exception ex){}%>
				           </button>
	              </li>
	              <li><button type="button" class="btn btn-info btn-md pull-right" data-toggle="modal" data-target="#loginModal" onclick="window.location.href='Logout'">
	               <span ></span>
	               Thoát	
	               </button>
	               </li>
	            </ul>
	            <div style="clear: both"></div>
	          </div>
	          </div>
	          </nav>
	          </div>
   <div class="container" style="background-color: white; padding-top: 5px;">
    	<div class="content col-md-12 ">
    		<div class="content-left col-md-3 col-sm-6 col-xs-6">    			
    			<ul class="nav nav-pills nav-stacked">
				  <li class="active" align="center"><a name="menu"><b>Trang của bạn</b></a></li>
				  <li><a href="#" id="xemid"><b>Thông tin cá nhân</b></a></li>
				  <li><a href="#" id="dskh"><b>Danh sách khóa học</b></a></li>				  
				  <li><a href="#" id="dshv"><b>Danh sách học viên</b></a></li>
				  <li><a href="#" id="molop"><b>Đăng kí mở lớp</b></a></li>
				   <li><a href="#" id="dsgv"><b>Xem danh sách giảng viên</b></a></li>
				  <li><a href="#" id="dstl"><b>Tài liệu</b></a></li>
				  <li><a href="#" id="dsnn"><b>Ngôn ngữ</b></a></li>
				   <li><a href="Logout" ><b>Thoát</b></a></li>
				</ul>
			</div>
    		<div class=" col-md-9 " id="noidungload" align="center">
    			   <jsp:include page="thongbao.jsp"></jsp:include>
    		</div>
    		</div>
    	</div>
 
   <footer>
	<div class="row">
		<div class="navbar navbar-default">
			<div class="container">
			   	<ol class="breadcrumb">
			   		<li><a href="index.jsp">Home</a></li>
			   		<li><a href="tinnhan.jsp">Contact</a></li>   		
			   		<li><a href="huongdansd.html">About</a></li>
			   		<li id="time">
			   			<script type="text/javascript">
			   				document.getElementById('time').innerHTML=Date();
			   			</script>
			   		</li>
			   		<li align="right">Copyright © <a href="http://itclass.vn">ITclass.vn</a></li>
			   		
			   	</ol>
			</div> 	
		</div>
	</div>
	
   </footer>
   
	<script type="text/javascript">
   		$("#btnmes").click(function(){
   			$("#Message").collapse('toggle');
   		});
   		$(document).ready(function() {
                $("#dshv").click(function() {
                    var url;
                    url = "xemdanhsachhocvien.jsp";
                    $("#noidungload").load(url);
                });
                $("#dsgv").click(function() {
                    var url;
                    url = "DSGV.jsp";
                    $("#noidungload").load(url);
                });
                $("#dsnn").click(function() {
                    var url;
                    url = "ngonngu.jsp";
                    $("#noidungload").load(url);
                });
                $("#dstl").click(function() {
                    var url;
                    url = "danhsachtailieu.jsp";
                    $("#noidungload").load(url);
                });
                $("#khoahoc").click(function() {
                    var url;
                    url = "index.jsp";
                    $("#wrapper").load(url);
                });
                $("#sapxep").click(function(){
                	$("#dropdown-menu").slideToggle("slow");
                })
                $("#xemid").click(function() {
                    var url;
                    url = "thongtincanhan.jsp";
                    $("#noidungload").load(url);
                });
                $("#molop").click(function() {
                    var url;
                    url = "dangkimokhoahoc.jsp";
                    $("#noidungload").load(url);
                });
                $("#dskh").click(function() {
                    var url;
                    url = "KH-GV.jsp";
                    $("#noidungload").load(url);
                });
                $("#diem1").click(function() {
                    var url;
                    url = "diem.jsp";
                    $("#noidungload").load(url);
                });
                $("#bn").click(function() {
                    var url;
                    url = "bainop.jsp";
                    $("#noidungload").load(url);
                });
                $('#btnmes').click(function(){
	   				$('#Message').collapse('toggle');
	   			});
	   			$('#thongbao').click(function(){
	   				var url;
                    url = "thongbao.jsp";
                    $("#noidungload").load(url);
	   			});
            });
            
   </script>

</body>
</html>