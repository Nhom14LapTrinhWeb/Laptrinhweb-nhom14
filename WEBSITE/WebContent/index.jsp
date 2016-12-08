<%@page import="Models.Users"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="DayLaNhom14.User"%>
<%	User objUser = (User)session.getAttribute("userLogin"); %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Code.vn</title>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- js -->
    <script src="jquery/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="jquery/script.js"></script> 
	<script src="jquery/main.js"></script>
	<script type="text/javascript" src="jquery/angular.min.js"></script>
	<script type="text/javascript" src="ajax/ajax.js"></script>
	

    <link rel="shortcut icon" href="ico/favicon.png">
    <!-- css -->
    <link rel="stylesheet" href="css/main.css">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">	    
		
</head>
<!-- <div class="col-md-12">
  
  		<div id="boxes">
		  <div style="top: 199.5px; left: 551.5px; display: none;" id="dialog" class="window"> Bạn đã sẵn sàng chưa?
			    <div id="lorem">
			     <p>Website học lập trình uy tín nhất hiện nay.Với đầy đủ các ngôn ngữ lập trình khác nhau.Luôn luôn là người bạn vững vàng cho bạn trong hành trình đến với thế giới lập tình!</p>
	    		</div>
	    		<div id="popupfoot"> <a href="#" class="close agree">I agree</a>  </div>
		 	 	</div>
			<div style="width: 1478px; font-size: 32pt; color:white; display: none; opacity: 0.8;" id="mask"></div>
		</div>
</div> -->
<body>	
<%
	Users users =null;
	if(session.getAttribute("user")!=null)
	{
		users=(Users)session.getAttribute("user");
	}
%>
<%
	if(users!=null){
%>
	<script type="text/javascript">
			                		
		alert("Đăng ký tài khoản thành công!!");
	</script>
<%} %>

<%
	User user =null;
	if(session.getAttribute("userLogin")!=null)
	{
		user=(User)session.getAttribute("user");
	}
%>
<%
	if(user!=null){
%>
	<script type="text/javascript">
			                		
		alert("Đăng nhập thất bại!!Tài khoản không đúng");
	</script>
<%} %>
	<div id="wrapper">
	
	<jsp:include page="header.jsp"></jsp:include>
	<div id="noidungchinh">
    <!-- body -->
    <div class="container" style="background-color: white; padding-top: 5px;">
    <div class="row">
    	<jsp:include page="loaikhoahoc.jsp"></jsp:include>
		<jsp:include page="thongtinkhoahoc.jsp"></jsp:include>
	</div>
	</div>
   </div>
   <div style="clear: both;"></div>
  </div>
  <jsp:include page="footer.jsp"></jsp:include>
</body>

 <sql:query dataSource="${snapshot}" var="laptrinhcoban" sql="SELECT Hinhanh,Tenkhoahoc,Tengiangvien,Lichhoc,Thoigianmo FROM khoahoc where Loaikhoahoc='LKH01'"/>
   <script type="text/javascript">
   		$("#btnmes").click(function(){
   			$("#Message").collapse('toggle');
   		});

   		$(document).ready(function() {
                $("#huongdan1").click(function() {
                    var url;
                    url = "huongdansd.jsp";
                    $("#noidungchinh").load(url);
                });
                
                $("#gopy").click(function() {
                    var url;
                    url = "tinnhan.jsp";
                    $("#noidungchinh").load(url);
                });
               
                $("#dangki1").click(function() {
                    var url;
                    url = "dangki.jsp";
                    $("#noidungchinh").load(url);
                });
                $("#dangki").click(function() {
                    var url;
                    url = "dangki.jsp";
                    $("#noidungchinh").load(url);
                });
                $("#dangkikhoahoc").click(function() {
                    var url;
                    url = "dangkihoc.jsp";
                    $("#noidungchinh").load(url);
                });
                $('#btnmes').click(function(){
	   				$('#Message').collapse('toggle');
	   			});
	   			$('#btnSent').click(function(){
	 				alert('Đã gửi thành công');
	   			});
            });
            
   </script>
   
</html>