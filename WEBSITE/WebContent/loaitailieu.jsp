<%@page import="Models.tailieu"%>
<%@page import="dao.tailieuDAO"%>
<%@page import="Models.loaitailieu"%>
<%@page import="dao.loaitailieuDAO"%>
<%@page import="Models.danhmucsapxep"%>
<%@page import="dao.danhmucsapxepDAO"%>
<%@page import="Models.Loaikhoahoc"%>
<%@page import="dao.LoaikhoahocDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Thông tin loại tài liệu</title>
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
<jsp:include page="headerhv.jsp"></jsp:include>
   		<%
	String type="";
	if(request.getParameter("type")!=null){
		type=request.getParameter("type");
	}
	String Maloai ="";
	if(request.getParameter("maloai")!=null){
		Maloai=request.getParameter("maloai");
	}
	String makh ="";
	if(request.getParameter("MaKH")!=null){
		makh=request.getParameter("MaKH");
	}
	
	tailieuDAO tldao = new tailieuDAO();
%>
			<%
		loaitailieuDAO loai = new loaitailieuDAO();
	%>
	<div id="noidungchinh">
    <!-- body -->
    <div class="container" style="background-color: white; padding-top: 5px;">
     <div class="row">
    		<div class="col-md-3 col-sm-3 col-xs-3">
    			<ul class="nav nav-pills nav-stacked">
				  <li class="active"><a name="xem"><b>Danh sách loại tài liệu</b></a></li>
				  <% 
				  	for(loaitailieu l : loai.getListLoaitailieu()){
				  %>
				  <li><a id="1" href="loaitailieu.jsp?maloai=<%=l.getMaloai()%>&type=danhmuc&MaKH=<%= makh%>"><b><%=l.getTenloai() %></b></a></li>
				  <%
				  	}
				  %>
				</ul>
    		</div>
 
	
   
    	<%if(type.equals("")){ %>
    		<div class="col-md-9 col-sm-9 col-xs-9" id="Danhsachtailieu">
		<div class="row">
		<div class="panel panel-primary" style="text-align: center;">
	    <div class="panel-heading" >Tài liệu</div>
		<table border="1" class="table">
			<tr>	
				<th>Tên tài liệu</th>
				<th>Học</th>           
			</tr>
			<%for(tailieu tl : tldao.getListTaiLieuByMaKhoaHoc(makh)){%>
				<tr>
								
					<td><%= tl.getTentailieu() %></td>	
					<td><a href="hoc.jsp?Link=<%= tl.getLink()%>&Ten=<%= tl.getMatailieu() %>"  target="_blank">Xem</a></td>                				
				</tr>
			<%
				}
			%>
		</table>
		
	</div>
		            
			</div>>
    		</div>
    	<%}
    	if(type.equals("danhmuc")){ %>
    		<div class="col-md-9 col-sm-9 col-xs-9" id="Danhsachtailieu">
		<div class="row">
		<div class="panel panel-primary" style="text-align: center;">
	    <div class="panel-heading" >Tài liệu</div>
		<table border="1" class="table">
			<tr>	
				<th>Tên tài liệu</th>
				<th>Học</th>           
			</tr>
			<%for(tailieu tl : tldao.getListTaiLieuByMaKHAndMaLoaiTL(makh, Maloai)){%>
				<tr>
								
					<td><%= tl.getTentailieu() %></td>	
					<%if(Maloai.equals("LTL01")){ %>
					<td><a href="hoc.jsp?Link=<%= tl.getLink()%>&Ten=<%= tl.getMatailieu() %>"  target="_blank">Xem</a></td>                				
					<%}else{ %>
						<td><a href="<%= tl.getLink()%>"  target="_blank">Xem</a></td>  
					<%} %>
				</tr>
			<%
				}
			%>
		</table>
		
			</div>
		            
	</div>
   </div>
    	<%} %>
	</div>
    </div>
    </div>
			
</body>
</html>