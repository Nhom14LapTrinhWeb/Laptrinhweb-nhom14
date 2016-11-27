<%@page import="org.apache.taglibs.standard.lang.jpath.adapter.Convert"%>
<%@page import="Models.khoahoc"%>
<%@page import="dao.khoahocDAO"%>
<%@page import="DayLaNhom14.User"%>
<%	User objUser = (User)session.getAttribute("userLogin"); %> 
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="ico/favicon.png">

    <title>CODE.VN</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <script src="jquery/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
    <style>
    	#but{
    		margin-top: 100px;
    	}
    </style>
</head>
<body>

    <%
			khoahocDAO kh = new khoahocDAO();
    		khoahoc k = new khoahoc();
			String Makh="";
			if(request.getParameter("Makhoahoc")!=null)
			{
				Makh=Convert.toString(request.getParameter("Makhoahoc")) ;
			}
			k=kh.getChitietkhoahoc(Makh);
	%>
	<%
	if(objUser!=null)
	{
%>
		<script type="text/javascript">
   		$(document).ready(function() {
                $("#dangkihoc1").click(function() {
                    $(this).attr('href',
                    		'dangkihoc.jsp?Makhoahoc=<%= k.getMakhoahoc()%>&Tentaikhoan=<%=objUser.getUsername()%>');
                });
            });

   		</script>
<%
	}
	else
	{
%>
		<script type="text/javascript">
   		$(document).ready(function() {
                $("#dangkihoc1").click(function() {
                    alert("Vui lòng đăng nhập trước!!");
                    $(this).attr('href','dangki.jsp');
                });
            });

   		</script>
<%
	}
%>
	<div class="container" id="noidungchinh">
		<div class="row">
			<h1 align="center"><%= k.getTenkhoahoc()%></h1>
			<h2>Tên giảng viên: <%= k.getTengiangvien() %></h2>
			<div class="col-md-8">
			<iframe width="560" height="315" src="<%= k.getVideogioithieu() %>" allowfullscreen frameborder="0"></iframe>
			</div>
			<div class="col-md-4">
			<a href="#" id="dangkihoc1"><button id="but" class="btn btn-lg btn-warning"><h2 style="margin:0px;">Ghi danh khóa học</h2></button></a>
			</div>
		</div>
		<div class="row">
			<h2>Mô tả khóa học</h2>
			<div class="well">
				<h3>Thời gian mở khóa học: <%= k.getThoigianmo().toString() %></h3>
				<h3>Thời gian kết thúc: <%= k.getThoigianketthuc().toString() %></h3>
				<h3>Thời gian học hàng tuần: <%= k.getLichhoc() %></h3>
				<h3>Mô tả về khóa học:
				<%= k.getMota() %>
				</h3>
				<h3>Đề cương: Download tại <a href="#">đây</a></h3>
			</div>
		</div>
	</div>
	<script type="text/javascript">
   		$(document).ready(function() {
                $("#dangkihoc1").click(function() {
                    var url;
                    url = "dangkihoc.jsp";
                    $("#noidungchinh").load(url);
                });
            });

   </script>
</body>
</html>