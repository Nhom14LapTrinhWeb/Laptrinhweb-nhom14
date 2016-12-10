<%@page import="Models.thongbao"%>
<%@page import="dao.thongbaoDAO"%>
<%@page import="DayLaNhom14.User"%>

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
			<title>Quản lý thông báo</title>

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
 	String MaTB="";
 	if(request.getParameter("MaTB")!=null)
 	{
 		MaTB=request.getParameter("MaTB");
 	}
 	thongbaoDAO tbdao = new thongbaoDAO();
 	thongbao tb = tbdao.getChiTietThongBao(MaTB);
 	
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
	     		<form class="form-horizontal" action="ManagerThongbaoServlet" method="post">
	       			<h2 class="head-form" align="center">Thêm thông báo</h2>
	       			<div class="form-group">
	      				<input class="form-control" id="mathongbao" name="mathongbao" type="text" placeholder="Mã Thông báo">
	    				
	    			</div>
	          		<div class="form-group">
	         			
	      				<input class="form-control" id="tenthongbao" name="tenthongbao" type="text" placeholder="Tên thông báo">
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<div class="form-group">
	          			
	      				<input class="form-control" id="noidung" name="noidung" type="text" placeholder="Nội dung">
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
	     		<form class="form-horizontal" action="ManagerThongbaoServlet" method="post">
	       			<h2 class="head-form" align="center">Sửa Thông báo</h2>
	       			<div class="form-group">
	      				<input class="form-control" id="mathongbao1" name="mathongbao1" type="text" value="<%= tb.getMathongbao() %>" disabled>
	    				
	    			</div>
	          		<div class="form-group">
	         			
	      				<input class="form-control" id="tenthongbao" name="tenthongbao" type="text" value="<%= tb.getTenthongbao() %>">
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<div class="form-group">
	          			
	      				<input class="form-control" id="noidung" name="noidung" type="text" value="<%= tb.getNoidung() %>">
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
	    				<input type="hidden" id="mathongbao" name="mathongbao" value="<%= tb.getMathongbao() %>"> 
	    				<input type="hidden" value="update" name="command">
	        			<input type="submit"  class="btn btn-success btn-lg center-block" value="Xác nhận" />
	        		</form>
	      		</div>
	      </div>
    </div>
    <%} %>			
</body>
</html>