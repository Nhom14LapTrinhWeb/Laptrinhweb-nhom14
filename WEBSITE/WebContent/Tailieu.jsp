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
<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<div class="panel panel-primary">
				<div class="panel-heading" style="text-align: center;">Cập nhập tài liệu</div>
				<form action="" class="register">
				<div class="form-group" style="text-align:center;" >
						<label for="makhoahoc">Mã khóa học</label>
						<input type="text" id="makhoahoc" class="form-control">
					</div>
					<div class="form-group" style="text-align:center;" >
						<label for="matailieu">Mã tài liệu</label>
						<input type="text" id="matailieu" class="form-control">
					</div>
					<div class="form-group" style="text-align:center;">
						<label for="loaitailieu">Loại tài liệu</label>
						<input type="text" id="loaitailieu" class="form-control">
					</div>
					<div class="form-group" style="text-align:center;">
						<label for="tentailieu">Tên tài liệu</label>
						<input id="tentailieu" class="form-control" type="password">
					</div>
					<div class="form-group">
        	 	<label for="dinhkem">Gửi đính kèm:</label>
        	 	<input id="dinhkem" type="file" name="img">
        	 </div>      
				</form>			
			</div>
			<button class="btn btn-primary pull-right" onclick="location.href='/trangGV_KH.jsp'">Hủy bỏ</button>
			<button class="btn btn-primary pull-right"  >Xác nhận</button>
		</div>
	</div>
</div>
</body>
</html>