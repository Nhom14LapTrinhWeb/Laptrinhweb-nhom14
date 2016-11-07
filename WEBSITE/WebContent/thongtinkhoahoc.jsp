<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<sql:setDataSource var="snapshot"
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/hoclaptrinhonline"
	user="root"
	password="phihung123789"/>
<sql:query dataSource="${snapshot}" var="items" sql="SELECT Hinhanh,Tenkhoahoc,Tengiangvien,Lichhoc,Thoigianmo FROM khoahoc"/>
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
	<div class="container" style="background-color: white; padding-top: 5px;">
    <div class="row">
    		<div class="col-md-3 col-sm-3 col-xs-3">
    			<ul class="nav nav-pills nav-stacked">
				  <li class="active"><a name="xem"><b>Danh sách khóa học</b></a></li>
				  <li><a href="#" id="laptrinhcoban"><b>Lập trình Cơ bản</b></a></li>
				  <li><a href="#"><b>Lập trình Lập trình Di động</b></a></li>
				  <li><a href="#"><b>Lập trình phần mềm</b></a></li>
				  <li><a href="#"><b>Lập trình Website</b></a></li>
				  <li><a href="#"><b>CEO</b></a></li>
				  <li><a href="#"><b>Lập trình mạng</b></a></li>
				</ul>
				
    		</div>
    		<div class="col-md-9 col-sm-9 col-xs-9" id="Danhsachkhoahoc">
				<div class="row">
		            <div class="col-md-9 col-sm-6 col-xs-6">
		                <h1>Danh sách các khóa học</h1>
		            </div>
		            <div class="col-md-3">
		            	
			                	<button class="btn btn-primary btn-md" id="sapxep" >
			                	Sắp xếp 
			                	<span class="caret" style="margin-left:5px;"></span>
			                	</button>
			                	<ul class="dropdown-menu" id="dropdown-menu">
			                		<li><a href="#">Mới nhất</a></li>
			                		<li><a href="#">Miễn phí</a></li>
			                		<li><a href="#">Khuyến mãi</a></li>
			                	</ul>

		            </div>
				</div>
			<div class="row">
				<c:forEach items="${items.rows}" var="row">	

				<div class="col-lg-4 col-sm-6 images" style="text-align: center;">
					<a href="#" class="thumbnail" style="text-align:left;">
						<img src="${row.Hinhanh}">
						<h3><b><c:out value="${row.Tenkhoahoc}" /></b></h3><br />
						<b>Tên Giảng viên:<c:out value="${row.Tengiangvien}" /></b><br />
						<b>Khai giảng:<c:out value="${row.Thoigianmo}" /></b><br />
						<b>Lịch học:<c:out value="${row.Lichhoc}" /></b><br />
					</a>
				</div>										
				</c:forEach>
		            
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
    </div>
    </div>
	
  				


<script type="text/javascript">
   		$(document).ready(function() {
                
                $("#sapxep").click(function(){
                	$("#dropdown-menu").slideToggle("100");
                })
            });
            
   </script>
</body>
</html>