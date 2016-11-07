<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trang GV-KH</title>
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
	<div class="row">
	<div class="panel panel-primary">
		<div class="panel-heading" style="text-align: center;" >DANH SÁCH KHÓA HỌC</div>
			<table class="table table-bordered" cellpadding="1" rules="all" border="1"  style="width:100%;border-collapse:collapse;" align="center">
				<thead>
				<tbody>
				<tr  style="height:30px;background-color: #00BFFF;">
					<th style="width:5%;" align="center"> STT</th>
					<th style="width:15%;" align="center"> Mã khóa học</th>
					<th style="width:20%;" align="center"> Tên khóa học</th>
					<td style="width:20%;" align="center">Lịch dạy</td>
					<td style="width:10%;" align="center">Số lượng</td>
					<td style="width:10%;" align="center">Ngày mở</td>
					<td style="width:10%;" align="center">Ngày kết thúc</td>
				</tr>
				</tbody>
				</thead>
				<tr>
					<td>1</td>
					<td><a href="#">KHs123</a></td>
					<td>Mở đầu lập trình</td>
					<td>7:00 PM thứ 2,4,6</td>
					<td>75</td>
					<td>7/11/2016</td>
					<td>7/12/2016</td>
				</tr>
				<tr>	
					<td>2</td>
					<td><a href="#">KHs123</a></td>
					<td>Mở đầu lập trình</td>
					<td>7:00 PM thứ 2,4,6</td>
					<td>75</td>
					<td>7/11/2016</td>
					<td>7/12/2016</td>
				</tr>
	
			</table>
		</tbody>
		 <button class="btn btn-warning pull-right">Tìm kiếm</button>
		</div>
		</div>
</body>
</html>