<%@page import="tools.sendmail"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Code.vn</title>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="ico/favicon.png">

    

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- header -->
    <!-- made row -->
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">    
        <form class="register" method="get" action="sendmailServlet">
        	<h2 class="head-form" style="text-align:center;">Gửi Email</h2>
          	<div class="form-group">
            <input type="text" name="hoten" id="hoten" class="form-control" placeholder="Họ tên">
          	</div>
         	 <div class="form-group">
            <input type="text" name="sdt" id="sdt" class="form-control" placeholder="Số điện thoại">
         	 </div>
         	 <div class="form-group">
            <input type="email" name="email" id="email" class="form-control" placeholder="Email">
         	 </div>
         	 <div class="form-group">
            <input type="text" name="tieude" id="tieude" class="form-control" placeholder="Tiêu đề">
         	 </div>
         	 <div class="form-group">
            <label for="noidung">Nội dung</label>
             <textarea class="form-control" name="noidung" id="noidung" rows="3"></textarea>
        	 </div>  	 
        	 <div class="form-group">
        	   <input class="btn btn-success btn-lg center-block" type="submit" value="Xác nhận">
        	 </div>
        </form>
      </div>     
    </div>
  </div>

</body>
</html>