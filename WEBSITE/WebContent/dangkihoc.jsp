<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
			<title>Đăng kí học</title>

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
	<div class="container">
		<div class="col-md-6 col-md-offset-3">
	     	<div class="row">
	     		<form class="form-horizontal">
	       			<h2 class="head-form" align="center">Đăng ký ghi danh lớp</h2>
	       			<div class="form-group">
	         			<label for="disabledInput" class="control-label">Tên tài khoản</label>
	      				<input class="form-control" id="disabledInput" type="text" placeholder="Load từ CSDL" disabled>
	    				<fieldset disabled></fieldset>
	    			</div>
	          		<div class="form-group">
	         			<label for="inputcourse" class="control-label">Mã khóa học</label>
	      				<input class="form-control" id="inputcourse" type="text" placeholder="Load từ CSDL" disabled>
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<div class="form-group">
	          			<label for="disabledSelect" class="control-label">Lịch học</label>
	          			<select id="disabledSelect" class="form-control">
	            		<option>Thứ 2 , 3, 4 lúc 5:00 pm</option>
	            		<option>Thứ 3 , 7, 7 lúc 7:00 pm</option>
	            		<option>Thứ 2 , 5, CN lúc 8:00 am</option>
	          			</select>
	      			</div>
	          		<div class="form-group">
	          			<label for="inputGV" class="control-label">Giảng viên</label>
	            		<input type="text" id="tenGV" class="form-control" placeholder="Tên Giảng Viên">
	          		</div>
	          		<div class="form-group">
	          			<label for="disabledSelect" class="control-label">Học phí</label>
	          			<select id="disabledSelect" class="form-control">
	            		<option>1 Lần đóng $$$$(100%)</option>
	            		<option>2 Lần(Lần đầu 80%, lần sau 20%)</option>
	          			</select>
	      			</div>
	        		<div class="form-group">
	          			<input type="text" id="SDT" class="form-control" placeholder="Số điện thoại">	
	          		</div>
	          		<div class="form-group">
	          			<input type="text" id="email" class="form-control" placeholder="Email">	
	          		</div>
	          		<div class="form-group">
	          			<input type="text" id="Facebook" class="form-control" placeholder="Link Facebook">	
	          		</div>
	        		<div class="form-group">
	      				<input type="checkbox"> Đã đồng ý với các điều khoản quy định<a href="#">(Điều khoản)</a>
	    			</div>
	        			<input type="submit" id="contactbtn" class="btn btn-success btn-lg center-block" value="Đăng ký" />
	        		</form>
	      		</div>
	      </div>
    </div>     				
</body>
</html>