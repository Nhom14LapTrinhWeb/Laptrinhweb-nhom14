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
      <div class="col-md-5">
        <h2 class="head-form">Tin nhắn</h2>
        <form class="register">
          <div class="form-group">
            <input type="text" id="id" class="form-control" placeholder="Họ và tên">
          </div>
          <div class="form-group">
            <input type="password" id="sdt" class="form-control" placeholder="Số điện thoại">
          </div>
          <div class="form-group">
            <input type="email" id="email" class="form-control" placeholder="Email">
          </div>
          <div class="form-group">
            <label for="Phan hoi y kien">Phản hồi ý kiến</label>
             <textarea class="form-control" id="Phan hoi y kien" rows="3"></textarea>
         </div>
        </form>
         <ul class="nav navbar-nav navbar-right">
             <li><button type="button" class="btn btn-info btn-md pull-right">
                  <span class="glyphicon "></span>
                     Gửi
                  </button>
                  </li>
                  <li><button type="button" class="btn btn-info btn-md pull-right" data-toggle="modal" data-target="#loginModal">
                   <span class="glyphicon glyphicon-log-in"></span>
                   File đính kèm
                   </button>
            </li>
        </ul>     
      </div>     
    </div>
  </div>
</body>
</html>