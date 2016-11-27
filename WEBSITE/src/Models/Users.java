package Models;

import java.sql.Date;

public class Users {
	private String Tentaikhoan;
	private String Email;
	private String Matkhau;
	private String Mavaitro;
	private String Hoten;
	private String SDT;
	private Date Ngaysinh;
	private String Diachi;
	public Users() {
		super();
	}
	
	public Users(String tentaikhoan, String email, String matkhau,
			String mavaitro, String hoten, String sDT, Date ngaysinh,
			String diachi) {
		super();
		Tentaikhoan = tentaikhoan;
		Email = email;
		Matkhau = matkhau;
		Mavaitro = mavaitro;
		Hoten = hoten;
		SDT = sDT;
		Ngaysinh = ngaysinh;
		Diachi = diachi;
	}

	public String getSDT() {
		return SDT;
	}

	public void setSDT(String sDT) {
		SDT = sDT;
	}

	public Date getNgaysinh() {
		return Ngaysinh;
	}

	public void setNgaysinh(Date ngaysinh) {
		Ngaysinh = ngaysinh;
	}

	public String getDiachi() {
		return Diachi;
	}

	public void setDiachi(String diachi) {
		Diachi = diachi;
	}

	public String getTentaikhoan() {
		return Tentaikhoan;
	}
	public void setTentaikhoan(String tentaikhoan) {
		Tentaikhoan = tentaikhoan;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getMatkhau() {
		return Matkhau;
	}
	public void setMatkhau(String matkhau) {
		Matkhau = matkhau;
	}
	public String getMavaitro() {
		return Mavaitro;
	}
	public void setMavaitro(String mavaitro) {
		Mavaitro = mavaitro;
	}
	public String getHoten() {
		return Hoten;
	}
	public void setHoten(String hoten) {
		Hoten = hoten;
	}

}
