// kiem tra dinh dang email
function isEmail(emailStr)
{
        var emailPat=/^(.+)@(.+)$/
        var specialChars="\\(\\)<>@,;:\\\\\\\"\\.\\[\\]"
        var validChars="\[^\\s" + specialChars + "\]"
        var quotedUser="(\"[^\"]*\")"
        var ipDomainPat=/^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/
        var atom=validChars + '+'
        var word="(" + atom + "|" + quotedUser + ")"
        var userPat=new RegExp("^" + word + "(\\." + word + ")*$")
        var domainPat=new RegExp("^" + atom + "(\\." + atom +")*$")
        var matchArray=emailStr.match(emailPat)
        if (matchArray==null) {
                return false
        }
        var user=matchArray[1]
        var domain=matchArray[2]
 
        // See if "user" is valid
        if (user.match(userPat)==null) {
            return false
        }
        var IPArray=domain.match(ipDomainPat)
        if (IPArray!=null) {
            // this is an IP address
                  for (var i=1;i<=4;i++) {
                    if (IPArray[i]>255) {
                        return false
                    }
            }
            return true
        }
        var domainArray=domain.match(domainPat)
        if (domainArray==null) {
            return false
        }
 
        var atomPat=new RegExp(atom,"g")
        var domArr=domain.match(atomPat)
        var len=domArr.length
 
        if (domArr[domArr.length-1].length<2 ||
            domArr[domArr.length-1].length>3) {
           return false
        }
 
        if (len<2)
        {
           return false
        }
 
        return true;
}
function validatePhone(a) {
    //var a = document.getElementById(txtPhone).value;
    var filter = /^[0-9-+]+$/;
    if (filter.test(a)) {
        return true;
    }
    else {
        return false;
    }
}
function kiemtrakhoangtrang(a) {
    //var a = document.getElementById(txtPhone).value;
    if (/ /.test(a)) {
    	return true;
	}
	else {
    return false;
	}
}
//kiem tra tinh hop le du lieu
$(document).ready(function(){
	$("#sub2").click(function(){
		var username = $.trim($("#username").val());
		var password1= $.trim($("#password").val());
		var password2= $.trim($("#password2").val());
		var email= $.trim($("#email").val());
		var hoten= $.trim($("#hoten").val());
		var sdt= $.trim($("#sdt").val());
		var flag1=true,flag2=true,flag3=true,flag4=true,flag5=true,flag6=true;
		if (username == '' || username.length < 4 || kiemtrakhoangtrang(username) || validText(username)){			
			$("#uname").removeClass("has-feedback has-success");
			$("#uname").addClass("has-error");
			$("#div1").removeClass("glyphicon glyphicon-ok form-control-feedback").css("color","red");
            $("#div1").addClass("alert alert-danger").text("Tên đăng nhập phải lớn hơn 4 ký tự và không được có khoảng trắng");
            flag1=false;
        }
        else{
			$("#uname").removeClass("has-error");
            $("#div1").removeClass("alert alert-danger").text("");
            $("#uname").addClass("has-feedback has-success");
            $("#div1").addClass("glyphicon glyphicon-ok form-control-feedback").css("color","green");
        }
 
        // Password
        if (password1.length < 5 || password1==''){
        	$("#upass").removeClass("has-feedback has-success");
			$("#upass").addClass("has-error");
			$("#div2").removeClass("glyphicon glyphicon-ok form-control-feedback").css("color","red");
            $("#div2").addClass("alert alert-danger").text("Mật khẩu phải lớn hơn 4 ký tự để đảm bảo an toàn");
            flag2=false;
        }
        else{
        	$("#upass").removeClass("has-error");
            $("#div2").removeClass("alert alert-danger").text("");
            $("#upass").addClass("has-feedback has-success");
            $("#div2").addClass("glyphicon glyphicon-ok form-control-feedback").css("color","green");
        }
 
        // Re password
        if (password1 != password2 || password2==""){
        	$("#upass2").removeClass("has-feedback has-success");
			$("#upass2").addClass("has-error");
			$("#div3").removeClass("glyphicon glyphicon-ok form-control-feedback").css("color","red");
            $("#div3").addClass("alert alert-danger").text("Mật khẩu nhập lại không đúng");
            flag3=false;
        }
        else{
        	$("#upass2").removeClass("has-error");
            $("#div3").removeClass("alert alert-danger").text("");
            $("#upass2").addClass("has-feedback has-success");
            $("#div3").addClass("glyphicon glyphicon-ok form-control-feedback").css("color","green");
        }
 
        // Email
        if (!isEmail(email)){
        	$("#uemail").removeClass("has-feedback has-success");
			$("#uemail").addClass("has-error");
			$("#div4").removeClass("glyphicon glyphicon-ok form-control-feedback").css("color","red");
            $("#div4").addClass("alert alert-danger").text("Email không được để trống và phải đúng định dạng");
            flag4 = false;
        }
        else{			
        	$("#uemail").removeClass("has-error");
            $("#div4").removeClass("alert alert-danger").text("");
            $("#uemail").addClass("has-feedback has-success");
            $("#div4").addClass("glyphicon glyphicon-ok form-control-feedback").css("color","green");
        }
        if (hoten == ''){
        	$("#uhoten").removeClass("has-feedback has-success");
			$("#uhoten").addClass("has-error");
			$("#div5").removeClass("glyphicon glyphicon-ok form-control-feedback").css("color","red");
            $("#div5").addClass("alert alert-danger").text("Không được để trống họ tên");
            
            flag5 = false;
        }
        else{
        	$("#uhoten").removeClass("has-error");
            $("#div5").removeClass("alert alert-danger").text("");
            $("#uhoten").addClass("has-feedback has-success");
            $("#div5").addClass("glyphicon glyphicon-ok form-control-feedback").css("color","green");
        }
        if (sdt.length <10 || sdt.length>11 || !validatePhone(sdt)){
        	$("#usdt").removeClass("has-feedback has-success");
			$("#usdt").addClass("has-error");
			$("#div6").removeClass("glyphicon glyphicon-ok form-control-feedback").css("color","red");
            $("#div6").addClass("alert alert-danger").text("Số điện thoại không đúng định dạng");
            flag6 = false;
        }
        else{
        	$("#usdt").removeClass("has-error");
            $("#div6").removeClass("alert alert-danger").text("");
            $("#usdt").addClass("has-feedback has-success");
            $("#div6").addClass("glyphicon glyphicon-ok form-control-feedback").css("color","green");
        }
        /*if(flag1 =false || flag2==false || flag3==false || flag4 =false || flag5==false || flag6==false)
            return false;*/
	});

});