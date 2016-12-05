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
<%@page import="org.apache.taglibs.standard.lang.jpath.adapter.Convert"%>
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
 	String Maloai="";
 	if(request.getParameter("Maloai")!=null)
 	{
 		Maloai=request.getParameter("Maloai");
 	}
 	loaitailieuDAO ltldao = new loaitailieuDAO();
 	loaitailieu ltl = ltldao.getChiTietTaiLieu(Maloai);
 	
 	
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
	     		<form class="form-horizontal" action="ManagerLoaitailieuServlet" method="post">
	       			<h2 class="head-form" align="center">Thêm loại tài liệu</h2>
	       			<div class="form-group">
	      				<input class="form-control" id="maloai" name="maloai" type="text" placeholder="Mã loại">
	    				
	    			</div>
	          		<div class="form-group">
	         			
	      				<input class="form-control" id="tenloai" name="tenloai" type="text" placeholder="Tên loại">
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<div class="form-group">
	          			
	      				<input class="form-control" id="mota" name="mota" type="text" placeholder="Mô tả">
	    				<fieldset disabled></fieldset>
	      			</div>
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
	     		<form class="form-horizontal" action="ManagerLoaitailieuServlet" method="post">
	       			<h2 class="head-form" align="center">Sửa loại tài liệu</h2>
	       			<div class="form-group">
	      				<input class="form-control" id="maloai1" name="maloai1" type="text" value="<%= ltl.getMaloai() %>" disabled>
	    				
	    			</div>
	          		<div class="form-group">
	         			
	      				<input class="form-control" id="tenloai" name="tenloai" type="text" value="<%= ltl.getTenloai() %>">
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<div class="form-group">
	          			
	      				<input class="form-control" id="mota" name="mota" type="text" value="<%= ltl.getMota() %>">
	    				<fieldset disabled></fieldset>
	      			</div>
	      			<%-- <h4 class="head-form" align="center">Vui lòng chọn tình trạng</h4>
	    			<div class="form-group">
					  <select class="form-control" id="tinhtrang" name="tinhtrang"  placeholder="Mã ngôn ngữ">
					  <%for(danhmucsapxep sx : sxdao.getDanhmucsapxep()) {%>
					    <option><%= sx.getMatinhtrang() %></option>
					    
					    <%} %>
					  </select>
					</div>  --%>
	    				<input type="hidden" id="maloai" name="maloai" value="<%= ltl.getMaloai() %>"> 
	    				<input type="hidden" value="update" name="command">
	        			<input type="submit"  class="btn btn-success btn-lg center-block" value="Xác nhận" />
	        		</form>
	      		</div>
	      </div>
    </div>
    <%} %>			
</body>
</html>