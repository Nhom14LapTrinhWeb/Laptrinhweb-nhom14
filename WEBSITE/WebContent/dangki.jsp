<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Đăng kí</title>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     
     <script type="text/javascript" src="jquery/jquery.min.js"></script>
    
	 <script type="text/javascript" src="jquery/script.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript" src="jquery/angular.min.js"></script>

    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<!-- Menu top -->
  <!-- Đăng ký tài khoản -->
  <div class="container">
    <div class="row">
      <div class="col-md-5">
        <h2 class="head-form" style="text-align: center;">Đăng ký tài khoản</h2>
        <form class="register" action="DangkitaikhoanServlet" method="post">
          <div id="uname" class="form-group">
            <input type="text" id="username" name="username" class="form-control " ng-model="username" placeholder="Tên đăng nhập">
            <span id="icon_error"></span><span id="user-result"></span>
            <div id="div1"></div>
          </div>
          <div id="upass" class="form-group">
            <input type="password" id="password" name="password" class="form-control" placeholder="Mật khẩu">
            <span id="icon_error1"></span><span id="pass1-result"></span>
           <div id="div2"></div>
          </div>
          <div id="upass2" class="form-group">
            <input type="password" id="password2" name="password2" class="form-control" placeholder="Nhập lại mật khẩu">

            <span id="icon_error2"></span><span id="pass2-result"></span>
            <div id="div3"></div>
          </div>
          <div id="uemail" class="form-group">
            <input type="email" id="email" name="email" class="form-control" placeholder="Email">   
            <span id="icon_error3"></span><span id="email-result"></span>        
            <div id="div4"></div>
          </div>
          <div id="uhoten" class="form-group">
            <input type="text" id="hoten" name="hoten" class="form-control" placeholder="Họ và tên">
             <span id="icon_error4"></span><span id="hoten-result"></span> 
             <div id="div5"></div>
          </div>
          <div id="usdt" class="form-group">
            <input type="text" id="sdt" name="sdt" class="form-control" placeholder="SĐT">
            <span id="icon_error5"></span><span id="sdt-result"></span> <br />
            
             <div id="div6"></div>
          </div>
          <span id="icon_error6"></span><span id="check-result"></span>
          <input type="hidden" value="insert" name="command">
          <button type="submit" id="sub2" class="btn btn-success btn-lg center-block">
          Đăng ký 
        </button>
        </form>
        
      </div>
      <div class="col-md-5 col-md-offset-2">
        <div class="panel panel-default"><h2 class="panel-header" style="text-align: center;">Bạn đã có tài khoản</h2>
          <div class="panel-body">
            
               <form action="Loginform" method="post">
	                <div class="form-group">
	                      <input type="radio" name="quyen" value="hocvien" checked="true">Học viên
	                      <input type="radio" name="quyen" value="giangvien">Giảng viên
	                      <input type="radio" name="quyen" value="admin">Quản trị viên
	                </div>
	                <div class="form-group">
	                    <label for="inputUserName">Tên đăng nhập</label>
	                      <input type="text" class="form-control input-lg" placeholder="Username" id="inputUserName" name="inputUserName">
	                    </div>
	                <div class="form-group">
	                      <label for="inputPassword">Mật khẩu</label>
	                      <input type="password" class="form-control input-lg" placeholder="Password" id="inputPassword" name="inputPassword">
	                </div>
	                <div class="form-group">
	                    <input type="checkbox">Ghi nhớ tài khoản
	                </div>
	                <a href="#">Quên mật khẩu?</a>
                  <input type="hidden" value="login" name="command">
	                 <button type="submit" class="btn btn-warning btn-lg pull-right">
	                     Đăng nhập
	                 </button>
        		</form>
          </div>
           
        </div>
        
        
      </div>
    </div>
  </div>
</body>

</html>