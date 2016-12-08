<%@page import="dao.khoahocDAO"%>
<%@page import="Models.khoahoc"%>
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
<title>Thông tin khóa học</title>
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
		khoahocDAO khdao = new khoahocDAO();
	%>

    		<div class="col-md-9 col-sm-9 col-xs-9" id="Danhsachkhoahoc">
				<div class="row">
		            <div class="col-md-9 col-sm-6 col-xs-6">
		                <h1>Danh sách các khóa học</h1>
		            </div>
		            <div class="col-md-3" id="danhmucsapxep">
		           		<jsp:include page="danhmucsapxep.jsp"></jsp:include>
		            </div>
				</div>
			<div class="row">
				<% for(khoahoc kh : khdao.getListKhoaHoc()){ %>

				<div class="col-lg-4 col-sm-6 images" style="text-align: center;">
					<a href="chitietkhoahoc.jsp?Makhoahoc=<%= kh.getMakhoahoc() %>" class="thumbnail" style="text-align:left;">
						<img src="<%= kh.getHinhanh() %>">
						<h3><b><c:out value="<%= kh.getTenkhoahoc() %>" /></b></h3><br />
						<b>Tên Giảng viên:<c:out value="<%= kh.getTengiangvien() %>" /></b><br />
						<b>Lịch học:<c:out value="<%= kh.getLichhoc()%>" /></b><br />
						<b>Học phí:<c:out value="<%= kh.getHocphi() %>" /></b><br />
					</a>
				</div>										
			<%} %>
		            
			</div>
			<div class="row">
			<nav>
				  <ul class="pagination">
				    <li>
				      <a href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li><a href="#">6</a></li>
				    <li><a href="#">7</a></li>
				    <li><a href="#">8</a></li>
				    <li><a href="#">9</a></li>
				    <li><a href="#">10</a></li>
				    <li>
				      <a href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
			</div>
    		</div>
</body>
</html>