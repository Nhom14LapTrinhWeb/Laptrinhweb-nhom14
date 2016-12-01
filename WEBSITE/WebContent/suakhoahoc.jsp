<%@page import="dao.UsersDAO"%>
<%@page import="Models.Users"%>
<%@page import="Models.danhmucsapxep"%>
<%@page import="Models.Loaikhoahoc"%>
<%@page import="dao.danhmucsapxepDAO"%>
<%@page import="dao.LoaikhoahocDAO"%>
<%@page import="dao.vaitroDAO"%>
<%@page import="Models.ngonngu"%>
<%@page import="dao.ngonnguDAO"%>
<%@page import="org.apache.taglibs.standard.lang.jpath.adapter.Convert"%>
<%@page import="Models.khoahoc"%>
<%@page import="DayLaNhom14.User"%>
<%@page import="dao.khoahocDAO"%>
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
			<title>Đăng kí học</title>

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
		 	ngonnguDAO nndao = new ngonnguDAO();
			LoaikhoahocDAO lkhdao = new LoaikhoahocDAO();
			danhmucsapxepDAO sxdao = new danhmucsapxepDAO();	
 
 			//
			khoahocDAO kh = new khoahocDAO();
    		khoahoc k = new khoahoc();
			String Makh="";
			if(request.getParameter("MaKH")!=null)
			{
				Makh=Convert.toString(request.getParameter("MaKH")) ;
			}
			k=kh.getChitietkhoahoc(Makh);
			
			UsersDAO userdao = new UsersDAO();
			Users user=new Users();
			String tentk="";
			
			if(request.getParameter("TenGV")!=null)
			{
				tentk=Convert.toString(request.getParameter("TenGV"));
			}
			user=userdao.getChitietCaNhan(tentk);
			
			//
			String ten="";
			Users u = new Users();
			if(objUser.getUsername()!=null)
			{
				ten=Convert.toString(objUser.getUsername());
			}
			u=userdao.getChitietCaNhan(ten);
	%>
	<div class="container">
		<div class="col-md-6 col-md-offset-3">
	     	<div class="row">
	     		<form class="form-horizontal" action="ManagerKhoahocServlet" method="post">
	       			<h2 class="head-form" align="center">Sửa thông tin khóa học</h2>
	       			<div class="form-group">
	      				<input class="form-control" id="makhoahoc1" name="makhoahoc1" type="text" value="<%= k.getMakhoahoc() %>" disabled>
	    				
	    			</div>
	          		<div class="form-group">
	         			
	      				<input class="form-control" id="tenkhoahoc" name="tenkhoahoc" type="text" value="<%= k.getTenkhoahoc() %>">
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<div class="form-group">
	          			
	      				<input class="form-control" id="hocphi" name="hocphi" type="text" value="<%= k.getHocphi() %>">
	    				<fieldset disabled></fieldset>
	      			</div>
	          		<div class="form-group">
	          			
	      				<input class="form-control" id="lichhoc" name="lichhoc" type="text" value="<%= k.getLichhoc() %>" > 
	    				<fieldset disabled></fieldset>
	          		</div>
	          		<div class="form-group">
	          			
	      				<input class="form-control" id="thoigianmo" name="thoigianmo" type="date" value="<%= k.getThoigianmo() %>" >
	    				<fieldset disabled></fieldset>
	      			</div>
	      			
	      			<div class="form-group">
	         			
	      				<input class="form-control" id="thoigianketthuc" name="thoigianketthuc" type="date" value="<%= k.getThoigianketthuc() %>" >
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<div class="form-group">
	         			
	      				<input class="form-control" id="tengiangvien1" name="tengiangvien1" type="text" value="<%=user.getTentaikhoan()%>" disabled >
	    				<fieldset disabled></fieldset>
	    			</div>
	    			
	          		<div class="form-group">
	         			
	      				<input class="form-control" id="mota" name="mota" type="text" value="<%= k.getMota() %>" >
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<div class="form-group">
	         			
	      				<input class="form-control" id="hinhanh" name="hinhanh" type="text" value="<%= k.getHinhanh() %>" >
	    				<fieldset disabled></fieldset>
	    			</div>
	    			
	    			<div class="form-group">
	         			
	      				<input class="form-control" id="video" name="video" type="text" value="<%= k.getVideogioithieu() %>" >
	    				<fieldset disabled></fieldset>
	    			</div>
	    			<h4 class="head-form" align="center">Vui lòng chọn mã ngôn ngữ</h4>
	    			<div class="form-group">
					  <select class="form-control" id="mangonngu" name="mangonngu"  value="<%= k.getMangonngu() %>">
					  <%for(ngonngu nn : nndao.getListNgonNgu() ) {%>
					    <option><%= nn.getMangonngu() %></option>
					    
					    <%} %>
					  </select>
					</div>
					<h4 class="head-form" align="center">Vui lòng chọn loại khóa học</h4>
	    			<div class="form-group">
					  <select class="form-control" id="loaikhoahoc" name="loaikhoahoc"  value="<%= k.getLoaikhoahoc() %>">
					  <%for(Loaikhoahoc lkh : lkhdao.getListLoaikhoahoc()) {%>
					    <option><%= lkh.getLoaiKH() %></option>
					    
					    <%} %>
					  </select>
					</div>
	    			<h4 class="head-form" align="center">Vui lòng chọn tình trạng</h4>
	    			<div class="form-group">
					  <select class="form-control" id="tinhtrang" name="tinhtrang"  value="<%= k.getTinhtrang() %>">
					  <%for(danhmucsapxep sx : sxdao.getDanhmucsapxep()) {%>
					    <option><%= sx.getMatinhtrang() %></option>
					    
					    <%} %>
					  </select>
					</div>
	    				<input  id="tengiangvien" name="tengiangvien" type="hidden" value="<%=user.getTentaikhoan()%>"  >
	    				<input  id="makhoahoc" name="makhoahoc" type="hidden" value="<%= k.getMakhoahoc() %>" >
	    				<input type="hidden" value="<%= u.getMavaitro() %>" name="vaitro" id="vaitro">
	    				<input type="hidden" value="update" name="command">
	        			<input type="submit"  class="btn btn-success btn-lg center-block" value="Xác nhận" />
	        		</form>
	      		</div>
	      </div>
    </div>     				
</body>
</html>