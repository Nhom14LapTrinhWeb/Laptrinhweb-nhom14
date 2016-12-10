<%@page import="dao.tailieuDAO"%>
<%@page import="Models.loaitailieu"%>
<%@page import="Models.tailieu"%>
<%@page import="dao.loaitailieuDAO"%>
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
	String query = "SELECT tentaikhoan from taikhoan WHERE tentaikhoan='"+objUser.getUsername()+"'";
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
			<title>Quản lý tài liệu</title>

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
 	String vaitro="";
 if(request.getParameter("vaitro")!=null)
	{
	 vaitro=request.getParameter("vaitro");
	}
 
 	String Matl="";
 	if(request.getParameter("Matl")!=null)
 	{
 		Matl=request.getParameter("Matl");
 	}
 	tailieuDAO tldao = new tailieuDAO();
 	tailieu tl =tldao.getChiTietTaiLieu(Matl);
 	
 	
 	loaitailieuDAO ltldao = new loaitailieuDAO();
 	khoahocDAO khdao = new khoahocDAO();
 	
 		String commandd = "";
	 if(request.getParameter("commandd")!=null)
	 {
		 commandd=request.getParameter("commandd");
	 }
	 if(commandd.equals("insert")){
	%>
	<div class="container">
		<div class="col-md-6 col-md-offset-3">
	     	<div class="row">
	     		<form class="form-horizontal" action="ManagerTailieuServlet" method="post">
	       			<h2 class="head-form" align="center">Thêm tài liệu</h2>
	       			<div class="form-group">
	      				<input class="form-control" id="matailieu" name="matailieu" type="text" placeholder="Mã tài liệu">
	    				
	    			</div>
	          		<div class="form-group">
	         			
	      				<input class="form-control" id="tentailieu" name="tentailieu" type="text" placeholder="Tên tài liệu">
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<div class="form-group">
	          			
	      				<input class="form-control" id="link" name="link" type="text" placeholder="Điền link vào đây !">
	    				<fieldset disabled></fieldset>
	      			</div>
	      			<h4 class="head-form" align="center">Vui lòng chọn mã loại tài liệu</h4>
	    			<div class="form-group">
					  <select class="form-control" id="loaitailieu" name="loaitailieu"  placeholder="Loại tài liệu">
					  <%for(loaitailieu ltl : ltldao.getListLoaitailieu()) {%>
					    <option><%= ltl.getMaloai() %></option>
					    
					    <%} %>
					  </select>
					</div>
					<h4 class="head-form" align="center">Vui lòng chọn mã khóa học</h4>
	    			<div class="form-group">
					  <select class="form-control" id="makhoahoc" name="makhoahoc"  placeholder="Mã khóa học">
					  <%for(khoahoc kh : khdao.getListKhoahocByTaiKhoan(objUser.getUsername())) {%>
					    <option><%= kh.getMakhoahoc() %></option>
					    
					    <%} %>
					  </select>
					</div>
						<input type="hidden" value="<%= vaitro %>" name="vaitro">
	    				<input type="hidden" value="insert" name="command">
	        			<input type="submit"  class="btn btn-success btn-lg center-block" value="Thêm" />
	        		</form>
	      		</div>
	      </div>
    </div>
    <%}else{ %>     	
    	<div class="container">
		<div class="col-md-6 col-md-offset-3">
	     	<div class="row">
	     		<form class="form-horizontal" action="ManagerTailieuServlet" method="post">
	       			<h2 class="head-form" align="center">Sửa tài liệu</h2>
	       			<div class="form-group">
	      				<input class="form-control" id="matailieu1" name="matailieu1" type="text" value="<%= tl.getMatailieu() %>" disabled>
	    				
	    			</div>
	          		<div class="form-group">
	         			
	      				<input class="form-control" id="tentailieu" name="tentailieu" type="text" value="<%= tl.getTentailieu() %>">
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<div class="form-group">
	          			
	      				<input class="form-control" id="link" name="link" type="text" value="<%= tl.getLink() %>">
	    				<fieldset disabled></fieldset>
	      			</div>
	      			<h4 class="head-form" align="center">Vui lòng chọn mã loại tài liệu</h4>
	    			<div class="form-group">
					  <select class="form-control" id="loaitailieu" name="loaitailieu"  placeholder="Loại tài liệu">
					  <%for(loaitailieu ltl : ltldao.getListLoaitailieu()) {%>
					    <option><%= ltl.getMaloai() %></option>
					    
					    <%} %>
					  </select>
					</div>
					<h4 class="head-form" align="center">Vui lòng chọn mã khóa học</h4>
	    			<div class="form-group">
					  <select class="form-control" id="makhoahoc" name="makhoahoc"  placeholder="Mã khóa học">
					  <%for(khoahoc kh : khdao.getListKhoaHoc()) {%>
					    <option><%= kh.getMakhoahoc() %></option>
					    
					    <%} %>
					  </select>
					</div>
	    				<input type="hidden" id="matailieu" name="matailieu" value="<%= tl.getMatailieu() %>"> 
	    				<input type="hidden" value="<%= vaitro %>" name="vaitro">
	    				<input type="hidden" value="update" name="command">
	        			<input type="submit"  class="btn btn-success btn-lg center-block" value="Xác nhận" />
	        		</form>
	      		</div>
	      </div>
    </div>
    <%} %>			
</body>
</html>