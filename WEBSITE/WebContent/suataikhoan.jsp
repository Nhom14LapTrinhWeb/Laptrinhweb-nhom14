<%@page import="org.apache.taglibs.standard.lang.jpath.adapter.Convert"%>
<%@page import="Models.Users"%>
<%@page import="dao.UsersDAO"%>
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
<%
			
			UsersDAO userdao = new UsersDAO();
			Users user=new Users();
			String tentk="";
			if(request.getParameter("id")!=null)
			{
				tentk=Convert.toString(request.getParameter("id"));
			}
			user=userdao.getChitietCaNhan(tentk);
	%>
	<!-- Menu top -->
  <!-- Đăng ký tài khoản -->
  <div class="container">
    <div class="row">
      <div class="col-md-5">
        <h2 class="head-form" style="text-align: center;">Sửa đổi thông tin tài khoản</h2>
        <form class="register" action="edit" method="post">
          <div id="uname" class="form-group">
            <input type="text" id="username" name="username" value="<%= user.getTentaikhoan() %>" class="form-control " ng-model="username" placeholder="Tên đăng nhập" disable>
            <span id="icon_error"></span><span id="user-result"></span>
          </div>
          <div id="upass" class="form-group">
            <input type="password" id="password" name="password" value="<%= user.getMatkhau() %>" class="form-control" placeholder="Mật khẩu">
            <span id="icon_error1"></span><span id="pass1-result"></span>
          </div>
          <div id="upass2" class="form-group">
            <input type="password" id="password2" name="password2" class="form-control" placeholder="Nhập lại mật khẩu">
            <span id="icon_error2"></span><span id="pass2-result"></span>
          </div>
          <div id="uemail" class="form-group">
            <input type="email" id="email" name="email" value="<%= user.getEmail() %>" class="form-control" placeholder="Email">   
            <span id="icon_error3"></span><span id="email-result"></span>        
          </div>
          <div id="uhoten" class="form-group">
            <input type="text" id="hoten" name="hoten" value="<%= user.getHoten() %>" class="form-control" placeholder="Họ và tên">
             <span id="icon_error4"></span><span id="hoten-result"></span> 
          </div>
          <div id="usdt" class="form-group">
            <input type="text" id="sdt" name="sdt" value="<%= user.getSDT() %>" class="form-control" placeholder="SĐT">
            <span id="icon_error5"></span><span id="sdt-result"></span> <br />
          </div>
          <div id="usdt" class="form-group">
            <input type="text" id="ngaysinh" name="ngaysinh" value="<%= user.getNgaysinh() %>" class="form-control" placeholder="SĐT">
            <span id="icon_error5"></span><span id="sdt-result"></span> <br />
          </div>
          <div id="usdt" class="form-group">
            <input type="text" id="mavaitro" name="mavaitro" value="<%= user.getMavaitro() %>" class="form-control" placeholder="SĐT">
            <span id="icon_error5"></span><span id="sdt-result"></span> <br />
          </div>
          <span id="icon_error6"></span><span id="check-result"></span>
          <input type="hidden" value="insert" name="command">
          <button type="submit" id="sub2" class="btn btn-success btn-lg center-block">
          Đăng ký 
        </button>
        </form>
        
      </div>
    </div>
  </div>
</body>

</html>