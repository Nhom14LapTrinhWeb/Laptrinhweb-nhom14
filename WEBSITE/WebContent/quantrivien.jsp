<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="DayLaNhom14.User"%>
<%
	User objUser = (User)session.getAttribute("userLogin");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Quản trị viên</title>
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
  <div id="wrapper">
    <div class="row"> 
      <!-- made nav -->
      <nav class="navbar navbar-default">
        <div class="container">
            <div class="container-fluid">
              <div class="navbar-header">
                <a class="navbar-brand" href="quantrivien.jsp">CODE.VN</a>
              </div>
              <form class="navbar-form navbar-left">
                  <div class="form-group">
                      <input type="text" class="form-control" placeholder="Search">
                  </div>
                    <a href="#" class="btn btn-info btn-md">
                      <span class="glyphicon glyphicon-search"></span>
                    </a>
               </form>
              <ul class="nav navbar-nav">
                <li><a href="#" id="thongbao">Thông báo mới</a></li>
                <li><a href="#" id="mokhoahoc">Mở khóa học mới</a></li> 
                <li><a href="#" id="kehoach">Kế hoạch</a></li>
              </ul>
              <%	if(objUser.getUsername()!=null) { %>
              <ul class="nav navbar-nav navbar-right">
               <li>
                  <p class="pull-right" style="padding: 10px;">
                      <span class="glyphicon glyphicon-user"></span>
                      
                      			<%=objUser.getUsername() %>
                    </p>
                </li>
                <%  }%>
                <li><button type="button" class="btn btn-info btn-md pull-right" onclick="window.location.href='Logout'">
                <span class="glyphicon glyphicon-log-out"></span>
                Thoát
                </button>
                </li>
            </ul>
              <div style="clear: both"></div>
            </div>
            <!-- end login form -->
          </div>
      </nav>    
  </div>
  <!-- end header -->
  <div id="bodymain">
    <!-- body -->
    <div class="container" style="background-color: white; padding-top: 5px;">
      <div class="content col-md-12 ">
        <div class="content-left col-md-2">
          <ul class="nav nav-pills nav-stacked">
          <li class="active"><a name="xem"><b>Quản lý</b></a></li>
          <li><a href="#" id="dsHocvien"><b>Danh sách học viên</b></a></li>
          <li><a href="#" id="dsgiangvien"><b>Danh sách giảng viên</b></a></li>
          <li><a href="#" id="dsLoaikhoahoc"><b>Danh sách loại khóa học</b></a></li>
          <li><a href="#" id="dsKhoahoc"><b>Danh sách khóa học đang mở</b></a></li>
          <li><a href="#"><b>Tin nhắn</b></a></li>
          <li><a href="#" id="thongtincanhan"><b>Tài khoản của bạn</b></a></li>
        </ul>
        
        </div>
        <div class="content-right col-md-10" >
          <div id="noidungchinh" >
              <div class="row ">
                  <div class="panel panel-success">
                    <div class="panel-heading">Danh sách Thông báo mới</div>
                      <div class="panel-body">
                        <ul>
                          <a><li>Khóa học C# chiều thứ 6 ngày 20/12/2016 nghỉ học </li></a>
                          <a><li>Khóa học PHP khóa 4 khai giảng vào ngày 12/11/2016 </li></a>
                        </ul>
                      </div>
                  </div>
              </div>
              <div class="row" id="chucnang">
                <ul class="nav navbar-nav">
                  <li><button class="btn btn-primary">Thêm Thông báo</button></li>
                  <li><button class="btn btn-primary">Sửa Thông báo</button></li>
                  <li><button class="btn btn-primary">Xóa Thông báo</button></li>
                </ul>
              </div>
          </div>

        </div>
      </div>
    </div>
   </div>
    <!-- end body -->
    <!-- phan trang -->
    
   <!-- Footer -->
   <div style="clear: both;"></div>
   <footer>
     <div class="well-md">
      <h3 align="right">Copyright © <a href="http://itclass.vn">ITclass.vn</a></h3>
      <ol class="breadcrumb">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Contact</a></li>      
        <li><a href="#">About</a></li>
        <li><a href="#">Products</a></li>
        <li id="time">
          <script type="text/javascript">
            document.getElementById('time').innerHTML=Date();
          </script>
        </li>
      </ol>
     </div>
 
   </footer>
   <!-- Tạo hộp thoại tin nhắn  -->
 </div>  
   <!--jquery  -->
   <script type="text/javascript">
      $(document).ready(function() {
           $("#tenquantrivien").click(function(){
                  $("#dropdown-menu").slideToggle("slow");
            }) 
          $("#thongbao").click(function() {
                    var url;
                    url = "thongbaomoi.jsp";
                    $("#noidungchinh").load(url);
            });
          $("#thongbao").click(function() {
                    var url;
                    url = "thongbaomoi.jsp";
                    $("#noidungchinh").load(url);
            });
          $("#thongtincanhan").click(function() {
              var url;
              url = "thongtincanhan.jsp";
              $("#noidungchinh").load(url);
      });
          $("#mokhoahoc").click(function() {
                    var url;
                    url = "dangkimokhoahoc.jsp";
                    $("#noidungchinh").load(url);
            });
          $("#kehoach").click(function() {
                    var url;
                    url = "kehoach.jsp";
                    $("#noidungchinh").load(url);
            });
          $("#dsHocvien").click(function() {
                    var url;
                    url = "danhsachhocvien.jsp";
                    $("#noidungchinh").load(url);
            });
          $("#dsgiangvien").click(function() {
                    var url;
                    url = "danhsachgiangvien.jsp";
                    $("#noidungchinh").load(url);
            });
          $("#dsKhoahoc").click(function() {
                    var url;
                    url = "danhsachkhoahocdangmo.jsp";
                    $("#noidungchinh").load(url);
            });
          $("#dsLoaikhoahoc").click(function() {
              var url;
              url = "danhsachloaikhoahoc.jsp";
              $("#noidungchinh").load(url);
      });
      })  
   </script>
</body>
</html>