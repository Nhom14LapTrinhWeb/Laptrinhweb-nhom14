
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
		var flag1=true,flag2=true,flag3=true,flag4=true,flag5=true,flag6=true;
		if (username == '' || username.length < 4){
            $("#div1").addClass("alert alert-danger").text("Tên đăng nhập phải lớn hơn 4 ký tự");
            flag1=false;
        }
        else{
            $("#div1").removeClass("alert alert-danger");
            $("#div1").addClass("alert alert-success").text("Thành công");
        }
 
        // Password
        if (password1.length < 5 || password1==''){
             $("#div2").addClass("alert alert-danger").text("Mật khẩu phải lớn hơn 4 ký tự để đảm bảo an toàn");
             flag2=false;
        }
        else{
            $("#div2").removeClass("alert alert-danger");
            $("#div2").addClass("alert alert-success").text("Hợp lệ");
        }
 
        // Re password
        if (password1 != password2 || password2==""){
            $("#div3").addClass("alert alert-danger").text("Mật khẩu nhập lại không đúng");
            flag3=false;
        }
        else{
            $("#div3").removeClass("alert alert-danger");
            $("#div3").addClass("alert alert-success").text("Đã khớp với mật khẩu cũ");
        }
 
        // Email
        if (!isEmail(email)){
            $("#div4").addClass("alert alert-danger").text("Email không được để trống và phải đúng định dạng");
            flag4 = false;
        }
        else{
            $("#div4").removeClass("alert alert-danger");
            $("#div4").addClass("alert alert-success").text("Email hợp lệ!");
        }
        if (hoten == ''){
            $("#div5").addClass("alert alert-danger").text("Không được để trống họ tên");
            
            flag5 = false;
        }
        else{
            $("#div5").removeClass("alert alert-danger");
            $("#div5").addClass("alert alert-success").text("Thành công");
        }
        if (sdt.length <10 || sdt.length>11){
            $("#div6").addClass("alert alert-danger").text("Số điện thoại không đúng định dạng");
            
            flag6 = false;
        }
        else{
            $("#div6").removeClass("alert alert-danger");
            $("#div6").addClass("alert alert-success").text("Thành công");
        }
        //if(flag1 =false || flag2==false || flag3==false || flag4 =false || flag5==false || flag6==false)
            //return;
	})

})