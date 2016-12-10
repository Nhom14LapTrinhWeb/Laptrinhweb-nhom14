<%@page import="dao.UsersDAO"%>
<%@page import="Models.Users"%>

<%@page import="Models.khoahoc"%>
<%@page import="dao.khoahocDAO"%>
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
 <%
			khoahocDAO kh = new khoahocDAO();
    		khoahoc k = new khoahoc();
			String Makh="";
			if(request.getParameter("Makhoahoc")!=null)
			{
				Makh=request.getParameter("Makhoahoc") ;
			}
			k=kh.getChitietkhoahoc(Makh);
			
			UsersDAO userdao = new UsersDAO();
			Users user=new Users();
			String tentk="";
			if(request.getParameter("Tentaikhoan")!=null)
			{
				tentk=request.getParameter("Tentaikhoan");
			}
			user=userdao.getChitietCaNhan(tentk);
	%>
	<div class="container">
		<div class="col-md-6 col-md-offset-3">
	     	<div class="row">
	     		<form class="form-horizontal" action="DangkihocServlet" method="post">
	       			<h2 class="head-form" align="center">Đăng ký ghi danh lớp</h2>
	       			<h4 class="head-form" align="center">Khóa học</h4>
	       			<div class="form-group">
	         			<label for="inputcourse" class="control-label">Tên khóa học</label>
	      				<input class="form-control" id="tenkhoahoc" name="tenkhoahoc" type="text" value="<%=k.getTenkhoahoc()%> " disabled>
	    				<fieldset disabled></fieldset>
	    			</div>
	          		<div class="form-group">
	         			<label for="inputcourse" class="control-label">Mã khóa học</label>
	      				<input class="form-control" id="makhoahoc1" name="makhoahoc1" type="text" value="<%=k.getMakhoahoc()%> " disabled>
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<div class="form-group">
	          			<label for="inputcourse" class="control-label">Lịch học</label>
	      				<input class="form-control" id="inputcourse" type="text" value="<%=k.getLichhoc() %> " disabled>
	    				<fieldset disabled></fieldset>
	      			</div>
	          		<div class="form-group">
	          			<label for="inputcourse" class="control-label">Tên giảng viên</label>
	      				<input class="form-control" id="inputcourse" type="text" value="<%=k.getTengiangvien() %> " disabled> 
	    				<fieldset disabled></fieldset>
	          		</div>
	          		<div class="form-group">
	          			<label for="inputcourse" class="control-label">Học phí</label>
	      				<input class="form-control" id="inputcourse" type="text" value="<%=k.getHocphi() %> " disabled>
	    				<fieldset disabled></fieldset>
	      			</div>
	      			<h4 class="head-form" align="center">Thông tin tài khoản</h4>
	      			<div class="form-group">
	         			<label for="disabledInput" class="control-label">Tên tài khoản</label>
	      				<input class="form-control" id="username1" name="username1" type="text" value="<%=user.getTentaikhoan()%> " disabled>
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<div class="form-group">
	         			<label for="disabledInput" class="control-label">Họ và tên</label>
	      				<input class="form-control" id="disabledInput" type="text" value="<%=user.getHoten()%>"  disabled>
	    				<fieldset disabled></fieldset>
	    			</div>
	        		<div class="form-group">
	         			<label for="disabledInput" class="control-label">Email</label>
	      				<input class="form-control" id="disabledInput" type="Email" value="<%=user.getEmail()%>" disabled>
	    				<fieldset disabled></fieldset>
	    			</div>
	          		
	          		<div class="form-group">
	         			<label for="disabledInput" class="control-label">Số điện thoại</label>
	      				<input class="form-control" id="disabledInput" type="text" value="<%=user.getSDT()%>" disabled>
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<h4 class="head-form" align="center">Vui lòng để thông tin tài khoản chính xác để chúng tôi liên lạc</h4>
	    				<input type="hidden" id="makhoahoc" name="makhoahoc" value="<%=k.getMakhoahoc()%>">
	    				<input type="hidden" id="username" name="username" value="<%=user.getTentaikhoan()%> ">
	    				<input type="hidden" value="insert" name="command">
	        			<input type="submit" id="contactbtn" class="btn btn-success btn-lg center-block" value="Đăng ký" />
	        		</form>
	      		</div>
	      </div>
    </div>     				
</body>
</html>