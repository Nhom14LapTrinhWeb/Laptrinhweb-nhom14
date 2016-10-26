<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>   
<sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/hoclaptrinhonline"
	user="root"
	password="phihung123789"/>
<sql:query var="items" sql="SELECT Hinhanh,Tenkhoahoc,Tengiangvien,Lichhoc,Thoigianmo FROM khoahoc"/>
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
  				<div class="row">
		            <div class="col-md-9">
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
				<c:forEach items="${items.rowsByIndex}" var="row">	

				<div class="col-lg-4 col-sm-6 images">
					<a href="#" class="thumbnail" id="chitietkhoahoc1">
						<c:forEach items="${row}" var="col">
							<img src="${col}">
									                     
						</c:forEach>
						

					</a>
				</div>										
				</c:forEach>
		            
			</div>
</body>
</html>