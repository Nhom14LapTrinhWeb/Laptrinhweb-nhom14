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
     				<div class="col-md-5">
     					<div class="row">
       					<h2 class="head-form" align="center">Đăng ký ghi danh lớp</h2>
       					<div class="register">
         				<label for="inputPassword" class="control-label">Tên tài khoản</label>
      					<input class="form-control" id="disabledInput" type="text" placeholder="Load từ CSDL" disabled>
    					<fieldset disabled></fieldset>
    					</div>
          				<div class="form-group">
         				<label for="inputcourse" class="control-label">Mã khóa học</label>
      					<input class="form-control" id="disabledInput" type="text" placeholder="Load từ CSDL" disabled>
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
            			<span id="tengiangvien_error"></span>
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
        				<div class="checkbox">
      					<label><input type="checkbox" value="">Đã đồng ý với các điều khoản quy định<a href="#">(Điều khoản)</a></label>
    					</div>
        				<button type="submit" id="contactbtn" class="btn btn-success btn-lg center-block">
          				Đăng ký 
        				</button>
      					</div>
      				</div>
      				<div class="col-md-4">
      					<div class="row">
      					<div class="content-left col-md-12 col-sm-6 col-xs-6">
    					<ul class="nav nav-pills nav-stacked">
      					<li><h3 align="center">Video giới thiệu khóa học</h3></li>
      					<li><iframe width="560" height="315" src="https://www.youtube.com/embed/ReuEvfzap80" frameborder="0" allowfullscreen></iframe></li>
      					<li><h3 align="center">Mô tả khóa học</h3></li>
      					<h4>
                		<b> Mô tả khóa học</b>
           				</h4>
            			<div >
                		<h3>
                    	<strong> JavaServer pages là gì ?</strong>
                		</h3>
                		<p>JavaServer Pages (JSP) thường hoạt động với cùng mục đích như các chương trình độc lập bởi sử dụng Common Gateway Interface (CGI). Nhưng JSP thường có một số lợi thế trong khi so sánh với CGI:</p>
                		<h3>
                		<strong>Tại sao phải sử dụng JSP ?</strong> 
                		</h3>
                		<ul class="list">
                    	<li>Hiệu năng tốt hơn đáng kể bởi vì JSP cho phép nhúng các phần tử động trong chính các HTML page thay vì phải có một CGI file riêng biệt</li>
                    	<li>JSP luôn luôn được biên dịch trước khi nó được xử lý bởi Server, không giống như CGI/Perl mà yêu cầu Server tải một trình thông dịch (Interpreter) và Target Script mỗi khi trang được yêu cầu.</li>
                    	<li>JavaServer Pages (JSP) được xây dựng ở trên cùng của Java Servlet API, vì thế, giống Servlet, JSP cũng có quyền truy cập tới tất cả Enterprise Java APIs mạnh mẽ, bao gồm JDBC, EJB, JAXP, …</li>
                    	<li>Các JSP page có thể được sử dụng để kết nối với Servlet mà xử lý Business logic, mô hình được hỗ trợ bởi Java Servlet.</li>
                		</ul>
            </div>
      					</div>
      					</div>
      				</div>
      			
    		</div>
    	</div>
</body>
</html>