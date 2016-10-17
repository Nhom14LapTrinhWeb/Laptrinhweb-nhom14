<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="ico/favicon.png">

    <title>CODE.VN</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <script src="jquery/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
    <style>
    	#but{
    		margin-top: 100px;
    	}
    </style>
</head>
<body>
	<!-- header -->
  	<!-- made row -->
    <!-- End header -->
	<div class="container" id="noidungchinh">
		<div class="row">
			<h1 align="center">Lập trình C#</h1>
			<h2>Tên giảng viên: Phi Hổ</h2>
			<div class="col-md-8">
			<iframe width="560" height="315" src="http://www.youtube.com/embed/W83cte8Soqw" allowfullscreen frameborder="0"></iframe>
			</div>
			<div class="col-md-4">
			<a href="#" id="dangkihoc1"><button id="but" class="btn btn-lg btn-warning"><h2 style="margin:0px;">Ghi danh khóa học</h2></button></a>
			</div>
		</div>
		<div class="row">
			<h2>Mô tả khóa học</h2>
			<div class="well">
				<h3>Thời gian bắt đầu: 7:00</h3>
				<h3>Thời gian kết thúc: 11:30</h3>
				<h3>Thời gian học hàng tuần: Thứ 2,4,6</h3>
				<h3>Địa điểm học: Skype: hoquochung@gmail.com</h3>
				<h3>Đề cương: Download tại <a href="#">đây</a></h3>
			</div>
		</div>
	</div>
	<script type="text/javascript">
   		$(document).ready(function() {
                $("#dangkihoc1").click(function() {
                    var url;
                    url = "dangkihoc.jsp";
                    $("#noidungchinh").load(url);
                });
            });

   </script>
</body>
</html>