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
			<title>Code.vn</title>

			<meta name="author" content="">
			<!-- js -->
			<script src="jquery/jquery.min.js"></script>
			<script src="bootstrap/js/bootstrap.min.js"></script>
			<script src="jquery/script.js"></script>
			<script src="jquery/main.js"></script>
			<script type="text/javascript"
				src="jquery/angular.min.js">
			</script>



			<link rel="shortcut icon" href="ico/favicon.png">
			<!-- css -->
			<link rel="stylesheet" href="css/main.css">
			<link href="bootstrap/css/bootstrap.min.css"
				rel="stylesheet">
			<link href="css/style.css" rel="stylesheet">
</head>
<body>

       				 <div class="panel-heading" style="backgrough-color:bule;" align="center" >
       				 <h3><b>Đăng kí mở lớp</b></h3></div>
       					<div class="row">
       					<form class="register">
         				<div class="form-group">
           				<input type="text" id="id" class="form-control " ng-model="usercouse" placeholder="Tên khóa học">

          				</div>
          				<div class="form-group">
           				<input type="text" id="key" class="form-control " ng-model="Keycouse" placeholder="Mã khóa học">
          				</div>
          				<div class="form-group">
            			<input type="text" id="tenGV" class="form-control" placeholder="Tên Giảng Viên" disabled>

          				</div>
          				<div class="form-group">
            			<input type="text" id="email" class="form-control" placeholder="Lịch giảng dạy">
          				</div>
          				<div class="form-group">
            			<input type="text" id="thoigianmo" class="form-control" placeholder="Thời gian mở(Dự kiến)">
         			 	</div>
          				<div class="form-group">
            			<input type="text" id="thoigiankt" class="form-control" placeholder="Thời gian kết thúc">
          				</div>
          				<div class="form-group">
            			<input type="text" id="hocphi" class="form-control" placeholder="Học phí">
          				</div>
          				
        				<div class="form-group">
            			<label for="Mota">Mô tả</label>
             				<textarea class="form-control" id="Phan hoi y kien" placeholder="Mô tả khóa học của bạn" rows="3"></textarea>
         				</div>
        				<button class="btn btn-warning pull-right" type="button" onclick="alert('Vui lòng chờ Admin phản hồi')">Đăng kí</button>
        				<button class="btn btn-warning pull-right" onclick="location.href='/trangGV_KH.jsp'">Hủy</button>
						</div>
      
    	
</body>
</html>