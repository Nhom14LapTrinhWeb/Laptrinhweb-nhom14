<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<body>	
	</div>
	<!-- Tao form hoi dang ki -->
  <div class="col-md-12">
  
  		<div id="boxes">
		  <div style="top: 199.5px; left: 551.5px; display: none;" id="dialog" class="window"> Bạn đã sẵn sàng chưa?
			    <div id="lorem">
			     <p>Website học lập trình uy tín nhất hiện nay.Với đầy đủ các ngôn ngữ lập trình khác nhau.Luôn luôn là người bạn vững vàng cho bạn trong hành trình đến với thế giới lập tình!</p>
	    		</div>
	    		<div id="popupfoot"> <a href="#" class="close agree">I agree</a>  </div>
		 	 	</div>
			<div style="width: 1478px; font-size: 32pt; color:white; height: 602px; display: none; opacity: 0.8;" id="mask"></div>
		</div>
  </div>
  	
	
	<div id="wrapper">
  <!-- end form tao dang ki -->
  <!-- header -->
  	<!-- made row -->
  	<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
  <!-- Indicators -->
  
	  <ol class="carousel-indicators">
	    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	    <li data-target="#myCarousel" data-slide-to="1"></li>
	    <li data-target="#myCarousel" data-slide-to="2"></li>
	  </ol>
	  <div class="carousel-inner">
	    <div class="item active"> <img src="images/slider1.jpg" style="width:100%;height: 300px" alt="First slide">
	      <div class="container">
	        <div class="carousel-caption">
	          <h1 style="color: red"><b>Học Lập trình</b></h1>
	          <p style="color: blue">Đăng kí thành viên để trở thành thành viên của website ngay bạn nhé!!</p>
	          <p><a class="btn btn-lg btn-primary" id="dangki1" role="button">Đăng ký</a></p>
	        </div>
	      </div>
	    </div>
	    <div class="item"> <img src="images/slider2.png" style="width:100%;height: 300px" data-src="" alt="Second    slide">
	      <div class="container">
	        <div class="carousel-caption">
	          <h1 style="color: red"><b>Học Lập trình</b></h1>
	          <p style="color: white">Đăng nhập để có thể học lập trình trực tuyến mỗi ngày nào!! </p>
	          <p><a class="btn btn-lg btn-primary" href="#" role="button" data-toggle="modal" data-target="#loginModal">Đăng nhập</a></p>
	        </div>
	      </div>
	    </div>
	    <div class="item"> <img src="images/slider3.jpg" style="width:100%;height: 300px" data-src="" alt="Third slide">
	      <div class="container">
	        <div class="carousel-caption">
	          <h1 style="color: red"><b>Học Lập trình</b></h1>
	          <p style="color: yellow">Các khóa học đang chờ đợi bạn</p>
	          <p><a class="btn btn-lg btn-primary" href="#xem" role="button">Xem</a></p>
	        </div>
	      </div>
	    </div>
	  </div>
	  <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
  </div>
  

<div style="clear: both"></div>
<!-- header -->
    <div class="row"> 
    	<!-- made nav -->
	    <nav class="navbar navbar-default">
	      <div class="container">
	          <div class="container-fluid">
	            <div class="navbar-header">
	              <a class="navbar-brand" href="index.jsp">CODE.VN</a>
	               <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-codevn-navbar-collapse-1" aria-expanded="false">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
			      </button>
	            </div>
	            <div class="collapse navbar-collapse" id="bs-codevn-navbar-collapse-1">
		            <form class="navbar-form navbar-left">
			                <div class="form-group">
			                    <input type="text" class="form-control" placeholder="Search">
			                </div>
			                  <a href="#" class="btn btn-info btn-md">
			                    <span class="glyphicon glyphicon-search"></span>
			                  </a>
			             </form>
			            <ul class="nav navbar-nav">
			              <li><a href="#" id="mienphi">Học miễn phí</a></li>
			              <li><a href="#" id="khoahoc">Khóa học</a></li> 
			              <li><a href="#" id="dangkikhoahoc">Đăng kí khóa học</a></li>
			              <li><a href="#" id="huongdan1">Hướng dẫn</a></li>
			              <li><a href="#" id="gopy">Góp ý</a></li>
			            </ul>
			            <ul class="nav navbar-nav navbar-right">
			              <li><button type="button" class="btn btn-info btn-md" id="dangki" style="">
			              <span class="glyphicon glyphicon-user"></span>
			              Đăng ký 
			              </button>
			              </li>
			              <li><button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#loginModal" >
			               <span class="glyphicon glyphicon-log-in"></span>
			               Đăng nhập
			               </button>
			               </li>
			            </ul>
			            <div style="clear: both"></div>
		            </div>  
	          </div>
	        </div>
	    </nav>  	
	</div>
		<!--  login form -->
	    <div class="modal" id="loginModal" role="dialog">
	    	<div class="modal-dialog">
	    		<div class="modal-content">
	                <div class="modal-header">
	                  <button type="button" class="close" data-dismiss="modal">&times;</button>
	                  <h4 class="modal-title" align="center">Đăng nhập</h4>
	                </div>
	                <div class="modal-body">
	                  <form action="Loginform" method="post">
	                    <div class="form-group">
	                      <input type="radio" name="quyen" value="hocvien" checked="true">Học viên
	                      <input type="radio" name="quyen" value="giangvien">Giảng viên
	                      <input type="radio" name="quyen" value="admin">Quản trị viên
	                    </div>
	                    <div class="form-group">
	                      <label for="inputUserName">Tên đăng nhập</label>
	                      <input type="text" class="form-control input-lg" placeholder="Username" id="inputUserName" name="inputUserName">
	                    </div>
	                    <div class="form-group">
	                      <label for="inputPassword">Mật khẩu</label>
	                      <input type="password" class="form-control input-lg" placeholder="Password" id="inputPassword" name="inputPassword">
	                    </div>
	                    <div class="form-group">
	                      <input type="checkbox">Ghi nhớ tài khoản
	                    </div>
	                     <a href="#">Quên mật khẩu?</a>
	                     <div style="text-align: right;">
	                     	 <button class="btn btn-primary" type="submit" id="submit">Đăng nhập</button>
	                 		 <button type="button" class="btn btn-primary" data-dismiss="modal">Thoát</button>
	                     </div>
	                    
	                  </form>
	                 
	                </div>
	              </div>
	            </div>
	              
	        </div>
	          <!-- end login form -->
	<!-- end header -->
	<div id="noidungchinh">
    <!-- body -->
    <div class="container" style="background-color: white; padding-top: 5px;">
    	<div class="content col-md-12 ">
    		<div class="content-left col-md-3 col-sm-6 col-xs-6">
    			<ul class="nav nav-pills nav-stacked">
				  <li class="active"><a name="xem"><b>Danh sách khóa học</b></a></li>
				  <li><a href="#"><b>Lập trình di động</b></a></li>
				  <li><a href="#"><b>Lập trình Game</b></a></li>
				  <li><a href="#"><b>Lập trình phần mềm</b></a></li>
				  <li><a href="#"><b>Lập trình Website</b></a></li>
				  <li><a href="#"><b>CEO</b></a></li>
				  <li><a href="#"><b>Lập trình mạng</b></a></li>
				</ul>
				
    		</div>
    		<div class="content-right col-md-9 col-sm-6 col-xs-6" id="Danhsachkhoahoc">
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
		            <div class="col-lg-4 col-sm-6 images">
		                <a href="#" class="thumbnail" id="chitietkhoahoc1">
		                    
		                    <img src="images/1.png">
		                    <h3><b>Lập trình C# </b></h3>
		                    	Giảng viên:Phi Hổ<br />
		                    	Khai Giảng:21/12/2016<br />
		                    	Thời gian học:3 tháng<br />
		                    	Lịch học:sáng 17h thứ T7,CN
		                </a>
		            </div>
		            <div class="col-lg-4 col-sm-6 images">
		                <a href="images/9.png" class="thumbnail">
		                    
		                    <img src="images/9.png">
		                    <h3><b>Lập trình C++ </b></h3>
		                    	Giảng viên:Phi Hùng<br />
		                    	Khai Giảng:20/01/2017<br />
		                    	Thời gian học:3 tháng<br />
		                    	Lịch học:sáng 7h thứ 2,4,6
		                    
		                   
		                </a>
		            </div>
		            <div class="col-lg-4 col-sm-6 images">
		                <a href="images/3.png" class="thumbnail">
		                    
		                    <img src="images/3.png">
		                    <h3><b>Lập trình PHP </b></h3>
		                    	Giảng viên:Hoàng long<br />
		                    	Khai Giảng:25/01/2017<br />
		                    	Thời gian học:6 tháng<br />
		                    	Lịch học:sáng 7h thứ 2,4,6
		                </a>
		            </div>
		            <div class="col-lg-4 col-sm-6 images">
		                <a href="images/4.png" class="thumbnail">
		                    
		                    <img src="images/4.png">
		                    <h3><b>Lập trình ASP.NET </b></h3>
		                    	Giảng viên:Kim Hoa<br />
		                    	Khai Giảng:22/01/2017<br />
		                    	Thời gian học:6 tháng<br />
		                    	Lịch học:sáng 18h thứ 2,4,6
		                </a>
		            </div>
		            <div class="col-lg-4 col-sm-6 images">
		                <a href="images/6.jpg" class="thumbnail">
		                    
		                    <img src="images/6.jpg">
		                    <h3><b>Lập trình Android và IOS </b></h3>
		                    	Giảng viên:Nguyễn Tuân<br />
		                    	Khai Giảng:29/01/2017<br />
		                    	Thời gian học:6 tháng<br />
		                    	Lịch học:sáng 7h thứ 3,5,7
		                </a>
		            </div>
		            <div class="col-lg-4 col-sm-6 images">
		                <a href="images/7.jpg" class="thumbnail">
		                    
		                    <img src="images/7.jpg">
		                    <h3><b>Lập trình Mạng máy tính </b></h3>
		                    	Giảng viên:Phi Hùng<br />
		                    	Khai Giảng:20/02/2017<br />
		                    	Thời gian học:3 tháng<br />
		                    	Lịch học:sáng 19h thứ 3,5,7
		                </a>
		            </div>
		            <div class="col-lg-4 col-sm-6  images">
		                <a href="images/8.jpg" class="thumbnail">
		                    
		                    <img src="images/8.jpg">
		                    <h3><b>CEO </b></h3>
		                    	Giảng viên:Thiên Bảo<br />
		                    	Khai Giảng:28/01/2017<br />
		                    	Thời gian học:3 tháng<br />
		                    	Lịch học:sáng 7h thứ 2,4,6
		                </a>
		            </div>
		            <div class="col-lg-4 col-sm-6 images">
		                <a href="#" class="thumbnail" id="chitietkhoahoc2">
		                    
		                    <img src="images/2.png">
		                    <h3><b>Lập trình JAVA </b></h3>
		                    	Giảng viên:Nguyễn Hưng<br />
		                    	Khai Giảng:18/02/2017<br />
		                    	Thời gian học:3 tháng<br />
		                    	Lịch học:sáng 14h thứ 2,4,6
		                </a>
		            </div>
				</div>
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
    <!-- end body -->
    <!-- phan trang -->
    
   <!-- Footer -->
   <div style="clear: both;"></div>
  
</body>
<footer>
	<div class="row">
		<div class="navbar navbar-default">
			<div class="container">
			   	<ol class="breadcrumb">
			   		<li><a href="index.jsp">Home</a></li>
			   		<li><a href="tinnhan.jsp">Contact</a></li>   		
			   		<li><a href="huongdansd.html">About</a></li>
			   		<li id="time">
			   			<script type="text/javascript">
			   				document.getElementById('time').innerHTML=Date();
			   			</script>
			   		</li>
			   		<li align="right">Copyright © <a href="http://itclass.vn">ITclass.vn</a></li>
			   	</ol>
			</div> 	
		</div>
	</div>
<<<<<<< HEAD
   </footer>
   <!-- Tạo hộp thoại tin nhắn  -->
<<<<<<< HEAD
   <!--jquery  -->
=======
>>>>>>> 81c9b6af1f9d7cdba1df73962958f3a87e404607
	<div class="row">
		<div class="navbar navbar-fixed-bottom">
			<div class="col-md-3 col-md-offset-9 col-sm-4 col-sm-offset-8 col-xs-5 col-xs-offset-7">
				<button id="btnmes" class="btn-success btn-block" style="margin:0px;">Gửi tin nhắn</button>
		   		<div class="panel-group">
		   			<div class="panel panel-default" style=" border: none;">
		   				<div id="Message" class="panel-collapse collapse">
					   		<p class="panel-header" style="text-align: center;">Nếu bạn có bất cứ thắc mắc nào cần giải đáp thì cứ việc gửi tin nhắn cho chúng tôi</p>
				 	  		<div class="panel-body">
						   		<form>   				
					   				<div class="form-group">
					   					<label for="name">Tên của bạn</label>
					   					<input id="name" class="form-control input-sm" type="text">
					   				</div>
					   				<div class="form-group">
					   					<label for="email">Email của bạn</label>
					   					<input id="email" class="form-control input-sm" type="email">
					   				</div>
					   				<div class="form-group">
										<label for="sdt">SĐT của bạn</label>
					   					<input id="sdt" class="form-control input-sm" type="text">
					   				</div>
					   				<div class="form-group">
					   					<label for="noidung">Nội dung</label>
					   					<textarea name="noidung" id="noidung" class="form-control input-sm" cols="30" rows="3"></textarea>
					   				</div>
					   				<div class="form-group">
					   					<input type="submit" class="btn btn-primary center-block" id="btnSent" value="Gửi tin nhắn">
					   				</div>				   				
					   			</form>
					   		</div>
				   		</div>
		   			</div>
		   		</div>			   		
			</div>   	
	  </div>
	</div>
 </footer >
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
                $("#khoahoc").click(function() {
                    var url;
                    url = "index.jsp";
                    $("#wrapper").load(url);
                });
                $("#sapxep").click(function(){
                	$("#dropdown-menu").slideToggle("slow");
                })
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
                $("#chitietkhoahoc1").click(function() {
                    var url;
                    url = "chitietkhoahoc.jsp";
                    $("#noidungchinh").load(url);
                });
                $("#chitietkhoahoc2").click(function() {
                    var url;
                    url = "chitietkhoahoc1.jsp";
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