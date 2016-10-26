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
	<!-- Menu top -->
  <!-- Đăng ký tài khoản -->
  <div class="container">
    <div class="row">
      <div class="col-md-5">
        <h2 class="head-form" style="text-align: center;">Đăng ký tài khoản</h2>
        <form class="register">
          <div id="uname" class="form-group">
            <input type="text" id="id" class="form-control " ng-model="username" placeholder="Tên đăng nhập">
            <div id="div1"></div>
          </div>
          <div id="upass" class="form-group">
            <input type="password" id="password" class="form-control" placeholder="Mật khẩu">
            
           <div id="div2"></div>
          </div>
          <div id="upass2" class="form-group">
            <input type="password" id="password2" class="form-control" placeholder="Nhập lại mật khẩu">
            <div id="div3"></div>
          </div>
          <div id="uemail" class="form-group">
            <input type="email" id="email" class="form-control" placeholder="Email">           
            <div id="div4"></div>
          </div>
          <div id="uhoten" class="form-group">
            <input type="text" id="hoten" class="form-control" placeholder="Họ và tên">
             
             <div id="div5"></div>
          </div>
          <div id="usdt" class="form-group">
            <input type="text" id="sdt" class="form-control" placeholder="SĐT">
            
             <div id="div6"></div>
          </div>
        </form>
        <button type="button" id="sub2" class="btn btn-success btn-lg center-block">
          Đăng ký 
        </button>
      </div>
      <div class="col-md-5 col-md-offset-2">
        <div class="panel panel-default"><h2 class="panel-header" style="text-align: center;">Bạn đã có tài khoản</h2>
          <div class="panel-body">
            
               <form>
                <div class="form-group">
                    <input type="radio" name="kieu" checked="true">Học viên
                    <input type="radio" name="kieu">Giảng viên
                    <input type="radio" name="kieu">Quản trị viên
                </div>
                <div class="form-group">
                  <label for="inputUserName">Tên đăng nhập</label>
                  <input type="text" class="form-control" placeholder="Tên đăng nhập" id="inputUserName" name="inputUserName" >
                </div>
                <div class="form-group">
                  <label for="inputPassword">Mật khẩu</label>
                  <input type="password" class="form-control" placeholder="Mật khẩu" id="inputPassword" name="inputPassword">
                </div>
                <div class="form-group">
                  <input type="checkbox"> Ghi nhớ tài khoản
                </div>
                <a href="#">Quên mật khẩu?</a>
                 <button type="submit" class="btn btn-warning btn-lg pull-right" method="post" action="Loginform">
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