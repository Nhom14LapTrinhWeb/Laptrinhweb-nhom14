<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trang Giảng viên</title>
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
	<script type="text/javascript" src="ajax/ajax.js"></script>
	

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
	              <li><a href="#" id="thongbao">Thông báo mới</a></li>       
	              <li><a href="Tailieu.jsp" id="tl">Tài liệu</a></li>
	              <li><a href="#" id="gopy">Góp ý</a></li>
	            </ul>
	            <ul class="nav navbar-nav navbar-right">
	              <li>
	              <a style="font-weight:bold;text-decoration:none;">GV.ABC</a>
	              </li>
	              <li><button type="button" class="btn btn-info btn-md pull-right" data-toggle="modal" data-target="#loginModal" >
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
				  <li><a href="#" id="bt"><b>Bài tập</b></a></li>
				  <li><a href="#" id="bn"><b>Bài nộp</b></a></li>
				  <li><a href="#" id="diem1"><b>Điểm</b></a></li>
				   <li><a href="index.jsp" ><b>Thoát</b></a></li>
				</ul>
			</div>
    		<div class=" col-md-9 " id="noidungload" align="center">
    			   <div class="row">
					<div class="panel panel-primary">
					<div class="panel-heading" style="text-align: center;" >THÔNG BÁO</div>
					<table class="table table-bordered" cellpadding="0" rules="all" border="1"  style="width:100%;border-collapse:collapse;" align="center">
				<thead>
				<tbody>
				<tr>
					<td><li><a>Nghỉ học ngày x tháng y năm NNNN</a></li></td>
				</tr>
				</tbody>
				</thead>
				
				
			</table>
		
		
	</div>
</div>
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
			<div class="row">
		<div class="navbar navbar-fixed-bottom">
			<div class="col-md-3 col-md-offset-9 col-sm-4 col-sm-offset-8 col-xs-5 col-xs-offset-7">
				<button id="btnmes" class="btn-success btn-block" style="margin:0px;">Gửi tin nhắn</button>
		   		<div class="panel-group">
		   			<div class="panel panel-default" style=" border: none;">
		   				<div id="Message" class="panel-collapse collapse">
					   		<p class="panel-header" style="text-align: center;">Nếu bạn có bất cứ thắc mắc nào cần giải đáp thì cứ việc gửi tin nhắn cho chúng tôi</p>
				 	  		<div class="panel-body">
						   		<form>   				
					   				<div class="form-group">
					   					<label for="name">Tên của bạn</label>
					   					<input id="name" class="form-control input-sm" type="text">
					   				</div>
					   				<div class="form-group">
					   					<label for="email">Email của bạn</label>
					   					<input id="email" class="form-control input-sm" type="email">
					   				</div>
					   				<div class="form-group">
										<label for="sdt">SĐT của bạn</label>
					   					<input id="sdt" class="form-control input-sm" type="text">
					   				</div>
					   				<div class="form-group">
					   					<label for="noidung">Nội dung</label>
					   					<textarea name="noidung" id="noidung" class="form-control input-sm" cols="30" rows="3"></textarea>
					   				</div>
					   				<div class="form-group">
					   					<input type="submit" class="btn btn-primary center-block" id="btnSent" value="Gửi tin nhắn">
					   				</div>				   				
					   			</form>
					   		</div>
				   		</div>
		   			</div>
		   		</div>			   		
			</div>   	
	  </div>
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
                    url = "dshv.jsp";
                    $("#noidungload").load(url);
                });
                $("#bt").click(function() {
                    var url;
                    url = "baitapGV.jsp";
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
                    url = "ThongtinGV.jsp";
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
	   			$('#btnSent').click(function(){
	 				alert('Đã gửi thành công');
	   			});
            });
            
   </script>

</body>
</html>