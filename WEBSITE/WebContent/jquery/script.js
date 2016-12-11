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
function validateText(a) {
    var filter = /\W/;
    if (filter.test(a)) {
        return true;
    }
    else {
        return false;
    }
}
$(document).ready(function () {
           var flag = false;
		   var flag1=false;
           var flag2=false;
           var flag3=false;
           var flag4=false;
           var flag5=false;
           var flag6=false;

           var x_timer;
           //kiểm tra tai khoan
           
           $("#username").keyup(function (e) {
                clearTimeout(x_timer);
                var user_name = $(this).val();
                x_timer = setTimeout(function () {
                    check_username_ajax(user_name);
                }, 1000);
                });
 
           function check_username_ajax(username) {
            if(username.length<5)
            {
                $("#user-result").html("<b style=\"color:red;\">Tên tài khoản phải lớn hơn 4 ký tự</b>");
                flag1=false;
            }
            else
            {
                if(kiemtrakhoangtrang(username))
                {
                    $("#user-result").html("<b style=\"color:red;\">Tên tài khoản không được có khoảng trắng</b>");
                    flag1=false;
                }
                else if(validateText(username))
                {
                    $("#user-result").html("<b style=\"color:red;\">Tên tài khoản không được có kí tự đặc biệt</b>");
                    flag1=false;
                }
                else
                {
                    $("#user-result").html('<img src="icon/ajax-loader.gif" />');
                    $.post('CheckUsernameServlet', {'username': username}, function (data) {
                    $("#user-result").html(data);
                    flag1=true;
                 });
                }
            }
                
           }
           //Kiểm tra pass 1
           $("#password").keyup(function (e) {
                clearTimeout(x_timer);
                var password1= $.trim($("#password").val());
                x_timer = setTimeout(function () {
                    check_pass1_ajax(password1);
                }, 1000);
                });
            function check_pass1_ajax(password1) {
               if(password1=="")
                {
                    $("#icon_error1").html("");
                    $("#pass1-result").html("");
                    flag2=false;
                }
                else
                {
                    if (password1.length <5 || kiemtrakhoangtrang(password1)){
                        $("#icon_error1").html("<img src=\"icon/not-available.png\" />");
                        $("#pass1-result").html("<b style=\"color:red;\">Mật khẩu không được có khoảng trắng và lớn hơn 4 ký tự</b>");
                        flag2=false;

                    }
                    else
                    {
                        $("#icon_error1").html("<img src=\"icon/available.png\" />");
                        $("#pass1-result").html("<b style=\"color:green;\">Mật khẩu hợp lệ</b>");
                        flag2=true;
                    }
                }       
           }
           //Kiểm tra pass 2
           $("#password2").keyup(function (e) {
                clearTimeout(x_timer);
                var password1= $.trim($("#password").val());
                var password2= $.trim($("#password2").val());
                x_timer = setTimeout(function () {
                    check_pass2_ajax(password2,password1);
                }, 1000);
                });
           function check_pass2_ajax(password2,password1) {
                if(password2=="")
                {
                    $("#icon_error2").html("");
                    $("#pass2-result").html("");
                    flag3=false;
                }
                else
                {
                    if (password1 != password2){
                        $("#icon_error2").html("<img src=\"icon/not-available.png\" />");
                        $("#pass2-result").html("<b style=\"color:red;\">Mật khẩu không khớp</b>");
                        flag3=false;
                    }
                    else
                    {
                        $("#icon_error2").html("<img src=\"icon/available.png\" />");
                        $("#pass2-result").html("<b style=\"color:green;\">Mật khẩu trùng khớp</b>");
                        flag3=true;
                    }
                }            
           }
           //kiểm tra email
           $("#email").keyup(function (e) {
                clearTimeout(x_timer);
                var email= $.trim($("#email").val());
                x_timer = setTimeout(function () {
                    check_email_ajax(email);
                }, 1000);
                });
            function check_email_ajax(email) {
               if(email=="")
                {
                    $("#icon_error3").html("");
                    $("#email-result").html("");
                    flag4=false;
                }
                else
                {
                     if (!isEmail(email)){
                        $("#icon_error3").html("<img src=\"icon/not-available.png\" />");
                        $("#email-result").html("<b style=\"color:red;\">Email không hợp lệ</b>");
                        flag4=false;
                    }
                    else
                    {
                        $("#icon_error3").html("<img src=\"icon/available.png\" />");
                        $("#email-result").html("<b style=\"color:green;\">Email có thể sử dụng</b>");
                        flag4=true;
                    }
                }       
           }
           //kiểm tra họ tên
           $("#hoten").keyup(function (e) {
                clearTimeout(x_timer);
                var hoten= $.trim($("#hoten").val());
                x_timer = setTimeout(function () {
                    check_hoten_ajax(hoten);
                }, 1000);
                });
            function check_hoten_ajax(hoten) {
               if(hoten=="")
                {
                    $("#icon_error4").html("");
                    $("#hoten-result").html("");
                    flag5=false;
                }
                else
                {
                     if (hoten.length<4){
                        $("#icon_error4").html("<img src=\"icon/not-available.png\" />");
                        $("#hoten-result").html("<b style=\"color:red;\">Họ tên phải lớn hơn 3 ký tự</b>");
                        flag5=false;

                    }
                    else
                    {
                        $("#icon_error4").html("<img src=\"icon/available.png\" />");
                        $("#hoten-result").html("<b style=\"color:green;\">Hợp lệ</b>");
                        flag5=true;
                    }
                }       
           }
           //kiểm tra số điện thoại
           $("#sdt").keyup(function (e) {
                clearTimeout(x_timer);
                var sdt= $.trim($("#sdt").val());
                x_timer = setTimeout(function () {
                    check_sdt_ajax(sdt);
                }, 1000);
                });
            function check_sdt_ajax(sdt) {
               if(sdt=="")
                {
                    $("#icon_error5").html("");
                    $("#sdt-result").html("");
                    flag6=false;
                }
                else
                {
                     if (sdt.length <10 || sdt.length>11 || !validatePhone(sdt)){
                        $("#icon_error5").html("<img src=\"icon/not-available.png\" />");
                        $("#sdt-result").html("<b style=\"color:red;\">Số điện thoại chưa đúng</b>");
                        flag6=false;

                    }
                    else
                    {
                        $("#icon_error5").html("<img src=\"icon/available.png\" />");
                        $("#sdt-result").html("<b style=\"color:green;\">Số điện thoại hợp lệ</b>");
                        flag6=true;
                    }
                }       
           }
           
           $("#sub2").click(function (e) {
               if(flag1==false || flag2==false || flag3==false || flag4==false || flag5==false || flag6==false)
               {
                    $("#icon_error6").html("<img src=\"icon/not-available.png\" />");
                    $("#check-result").html("<b style=\"color:red;\">Vui lòng nhập đầy đủ thông tin hợp lệ!</b>");
                    return false;
                    
               }
           });
           function check_usernamelogin_ajax(username) {
        	   if(validateText(username) || username=="")
               {
        		   var re = /\W/;
        		   var name = username.split(re);
        		   $("#inputUserName").val(name);
                   flag=false;
               }
        	   else
        	   {
                   flag=true;
        	   }
           }
           $('#submitlogin').click(function(e){
        	   var user_name = $("#inputUserName").val();
               if(check_usernamelogin_ajax(user_name))
               {
                  $('#LoginForm').submit();
               }
        	   if(flag==false){
        		   $("#error").html("<img src=\"icon/not-available.png\" />");
                   $("#result").html("<b style=\"color:red;\">Tên tài khoản không được để trống hoặc có kí tự đặc biệt</b>");
                   return false;
        	   }
           });
       });