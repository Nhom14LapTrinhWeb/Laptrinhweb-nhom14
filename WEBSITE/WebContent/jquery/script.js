
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
//kiem tra tinh hop le du lieu
$(document).ready(function(){
	$("#sub2").click(function(){
		var username = $.trim($("#id").val());
		var password1= $.trim($("#password").val());
		var password2= $.trim($("#password2").val());
		var email= $.trim($("#email").val());
		var hoten= $.trim($("#hoten").val());
		var sdt= $.trim($("#sdt").val());
		var flag=true;
		if (username == '' || username.length < 4){
            $('#username_error').text('Tên đăng nhập phải lớn hơn 4 ký tự');
            flag = false;
        }
        else{
            $('#username_error').text('');
        }
 
        // Password
        if (password1.length < 5 || password1==''){
            $('#password_error').text('Mật khẩu phải lớn hơn 4 ký tự để đảm bảo an toàn');
            flag = false;
        }
        else{
            $('#password_error').text('');
        }
 
        // Re password
        if (password1 != password2){
            $('#password2_error').text('Mật khẩu nhập lại không đúng');
            flag = false;
        }
        else{
            $('#password2_error').text('');
        }
 
        // Email
        if (!isEmail(email)){
            $('#email_error').text('Email không được để trống và phải đúng định dạng');
            flag = false;
        }
        else{
            $('#email_error').text('');
        }
        if (hoten == ''){
            $('#hoten_error').text('Không được để trống họ tên');
            flag = false;
        }
        else{
            $('#hoten_error').text('');
        }
        if (sdt.length <10 || sdt.length>11){
            $('#sdt_error').text('Số điện thoại không đúng định dạng');
            flag = false;
        }
        else{
            $('#sdt_error').text('');
        }
        return flag;
	})
})