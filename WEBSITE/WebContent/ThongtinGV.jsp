<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
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
	<div class="panel panel-primary ">
		<div class="panel-heading " style="text-align: center;" >Thông tin cá nhân</div>
			<table class="table table-bordered">
				<tr>
					<td>Tên tài khoản</td>
					<td>abc</td>
				</tr>
				<tr>
					<td>Họ và tên</td>
					<td>xyz</td>
				</tr>
				<tr>
					<td>Ngày sinh</td>
					<td>02/06/1996</td>
				</tr>
				<tr>
					<td>Địa chỉ</td>
					<td>Hồ chí minh</td>
				</tr>
				<tr>
					<td>Email</td>
					<td>asdasd@gmail.com</td>
				</tr>
				<tr>
					<td>Điện thoại</td>
					<td>01345456789</td>
				</tr>
				<tr>
					<td>Vai trò</td>
					<td>Học viên</td>
				</tr>
			</table>
			<button class="btn btn-warning pull-right" onclick="location.href='/thaydoithongtin.jsp'">Chỉnh sửa thông tin</button>
			<button class="btn btn-warning pull-right" onclick="location.href='/doimatkhau.jsp'">Đổi mật khẩu</button>
		</div>
	</div>
</body>
</html>