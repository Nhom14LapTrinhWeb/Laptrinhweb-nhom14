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
	String error = null;
	if(request.getParameter("error")!=null)
	{
		error = request.getParameter("error");
	}
%>
	<!-- Menu top -->
  <!-- Đăng ký tài khoản -->
  <div class="container">
    <div class="row">
      <div class="col-md-5">
        <h2 class="head-form" style="text-align: center;">Thêm loại khóa học</h2>
        <form class="register" action="ManagerLoaikhoahocServlet" method="post">
          <div id="" class="form-group">
            <input type="text" id="maloai" name="maloai" class="form-control " ng-model="maloai" placeholder="Mã loại">
          </div>
          <div id="" class="form-group">
            <input type="text" id="tenloai" name="tenloai" class="form-control" placeholder="Tên loại khóa học">
          </div>
           <%-- <span><%= error%></span> --%>
          <input type="hidden" value="insert" name="command">
          <button type="submit" class="btn btn-success btn-lg center-block">
          Thêm
        </button>
        </form>
        
      </div>
    </div>
  </div>
</body>

</html>