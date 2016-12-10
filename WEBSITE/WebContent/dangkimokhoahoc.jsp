<%@page import="Models.danhmucsapxep"%>
<%@page import="Models.Loaikhoahoc"%>
<%@page import="dao.danhmucsapxepDAO"%>
<%@page import="dao.LoaikhoahocDAO"%>
<%@page import="dao.vaitroDAO"%>
<%@page import="Models.ngonngu"%>
<%@page import="dao.ngonnguDAO"%>
<%@page import="DayLaNhom14.User"%>
<%@page import="dao.UsersDAO"%>
<%@page import="Models.Users"%>

<%@page import="Models.khoahoc"%>
<%@page import="dao.khoahocDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%	User objUser = (User)session.getAttribute("userLogin"); 

%> 
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
 			ngonnguDAO nndao = new ngonnguDAO();
 			LoaikhoahocDAO lkhdao = new LoaikhoahocDAO();
 			danhmucsapxepDAO sxdao = new danhmucsapxepDAO();
 			////
			UsersDAO userdao = new UsersDAO();
			Users user=new Users();
			String tentk="";
			if(objUser.getUsername()!=null)
			{
				tentk=objUser.getUsername();
			}
			user=userdao.getChitietCaNhan(tentk);
	%>
	<div class="container">
		<div class="col-md-6 col-md-offset-3">
	     	<div class="row">
	     		<form class="form-horizontal" action="ManagerKhoahocServlet" method="post" >
	       			<h2 class="head-form" align="center">Mở khóa học</h2>
	       			<div class="form-group">
	      				<input class="form-control" id="makhoahoc" name="makhoahoc" type="text" placeholder="Mã khóa học">
	    				
	    			</div>
	          		<div class="form-group">
	         			
	      				<input class="form-control" id="tenkhoahoc" name="tenkhoahoc" type="text" placeholder="Tên khóa học">
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<div class="form-group">
	          			
	      				<input class="form-control" id="hocphi" name="hocphi" type="text" placeholder="Học phí">
	    				<fieldset disabled></fieldset>
	      			</div>
	          		<div class="form-group">
	          			
	      				<input class="form-control" id="lichhoc" name="lichhoc" type="text" placeholder="Lịch học" > 
	    				<fieldset disabled></fieldset>
	          		</div>
	          		<div class="form-group">
	          			
	      				<input class="form-control" id="thoigianmo" name="thoigianmo" type="date" placeholder="Thời gian mở " >
	    				<fieldset disabled></fieldset>
	      			</div>
	      			
	      			<div class="form-group">
	         			
	      				<input class="form-control" id="thoigianketthuc" name="thoigianketthuc" type="date" placeholder="Thời gian kết thúc" >
	    				<fieldset disabled></fieldset>
	    			</div>
	    			
	    			<div class="form-group">
	         			
	      				<input class="form-control" id="tengiangvien1" name="tengiangvien1" type="text" value="<%= objUser.getUsername() %>" disabled>
	    				<fieldset disabled></fieldset>
	    			</div>
	    			
	          		<div class="form-group">
	         			
	      				<input class="form-control" id="mota" name="mota" type="text" placeholder="Mô tả" >
	    				<fieldset disabled></fieldset>
	    			</div>
	    			
	    			<div class="form-group">
	         			
	      				<input class="form-control" id="hinhanh" name="hinhanh" type="text" placeholder="Tên hình hảnh.đuôi" >
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<div class="form-group">
	         			
	      				<input class="form-control" id="video" name="video" type="text" placeholder="Link mã nhúng video" >
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<h4 class="head-form" align="center">Vui lòng chọn loại khóa học</h4>
	    			<div class="form-group">
					  <select class="form-control" id="loaikhoahoc" name="loaikhoahoc"  placeholder="Mã ngôn ngữ">
					  <%for(Loaikhoahoc lkh : lkhdao.getListLoaikhoahoc()) {%>
					    <option><%= lkh.getLoaiKH() %></option>
					    
					    <%} %>
					  </select>
					</div>
	    			<h4 class="head-form" align="center">Vui lòng chọn mã ngôn ngữ</h4>
	    			<div class="form-group">
					  <select class="form-control" id="mangonngu" name="mangonngu"  placeholder="Mã ngôn ngữ">
					  <%for(ngonngu nn : nndao.getListNgonNgu() ) {%>
					    <option><%= nn.getMangonngu() %></option>
					    
					    <%} %>
					  </select>
					</div>
	    			<h4 class="head-form" align="center">Vui lòng chọn tình trạng</h4>
	    			<div class="form-group">
					  <select class="form-control" id="tinhtrang" name="tinhtrang"  placeholder="Mã ngôn ngữ">
					  <%for(danhmucsapxep sx : sxdao.getDanhmucsapxep()) {%>
					    <option><%= sx.getMatinhtrang() %></option>
					    
					    <%} %>
					  </select>
					</div>
					
	    				<input type="hidden" id="tengiangvien" name="tengiangvien" value="<%=objUser.getUsername()%>"> 
	    				<input type="hidden" value="<%= user.getMavaitro() %>" name="vaitro" id="vaitro">
	    				<input type="hidden" value="insert" name="command">
	        			<input type="submit"  class="btn btn-success btn-lg center-block" value="Đăng ký" />
	        		</form>
	      		</div>
	      </div>
    </div>     				
</body>
</html>