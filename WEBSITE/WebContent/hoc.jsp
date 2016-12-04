
<%@page import="Models.tailieu"%>
<%@page import="dao.tailieuDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>video</title>
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
<body style="background-color:#9797FE;">
<%
	String Matailieu="";
	String Link="";
	if(request.getParameter("Link")!=null)
	{
		Link=request.getParameter("Link");
	}
	if(request.getParameter("Ten")!=null)
	{
		Matailieu=request.getParameter("Ten");
	}
	tailieuDAO tldao = new tailieuDAO();
	tailieu tl = tldao.getChiTietTaiLieu(Matailieu);
%>
	<div id="noidungchinh" >
    <div class="container" style="background-color: white; padding-top: 5px; background-color:#9797FE;">
     <div class="row" style="text-align:center;">
    		<h1 style="color:#C80000;"><b><%=tl.getTentailieu()%></b></h1>
    </div>
    <div class="row" style="text-align:center;">
    	<iframe width="800" height="500" src="<%=Link %>" frameborder="0" allowfullscreen></iframe>
    </div>
	</div>
	</div>	
</body>
</html>