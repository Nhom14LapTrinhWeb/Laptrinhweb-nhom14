<%@page import="Models.Loaikhoahoc"%>
<%@page import="dao.LoaikhoahocDAO"%>
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
	LoaikhoahocDAO lkhdao= new LoaikhoahocDAO();
	String loai="";
	if(request.getParameter("LoaiKH")!= null)
	{
		loai=request.getParameter("LoaiKH");
	}
	Loaikhoahoc lkh =lkhdao.getLoaikhoahoc(loai);
%>
	<!-- Menu top -->
  <!-- Đăng ký tài khoản -->
  <div class="container">
    <div class="row">
      <div class="col-md-5">
        <h2 class="head-form" style="text-align: center;">Sửa tên loại khóa học</h2>
        <form class="register" action="ManagerLoaikhoahocServlet" method="post">
          <div class="form-group">
	         	<label for="disabledInput" class="control-label">Mã loại</label>
	      		<input class="form-control" id="maloai" name="maloai" type="text" value="<%= lkh.getLoaiKH()%>" disabled>
	    		<fieldset disabled></fieldset>
	    </div>
          <div id="" class="form-group">
            <input type="text" id="tenloai1" name="tenloai1" class="form-control" placeholder="<%= lkh.getTenloai()%>">
          </div>
          <input type="hidden" id="maloai1" name="maloai1" class="form-control" value="<%= lkh.getLoaiKH()%>">
          <input type="hidden" value="update" name="command">
          <button type="submit" class="btn btn-success btn-lg center-block">
          Sửa
        </button>
        </form>
        
      </div>
    </div>
  </div>
</body>

</html>