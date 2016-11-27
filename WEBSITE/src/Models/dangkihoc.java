package Models;

public class dangkihoc {
	private String Tentaikhoan;
	private String Makhoahoc;
	private float Diemtong;
	private int Tinhtranghocphi;
	private String Trangthai;
	public dangkihoc() {
		super();
	}
	
	public dangkihoc(String tentaikhoan, String makhoahoc, float diemtong,
			int tinhtranghocphi, String trangthai) {
		super();
		Tentaikhoan = tentaikhoan;
		Makhoahoc = makhoahoc;
		Diemtong = diemtong;
		Tinhtranghocphi = tinhtranghocphi;
		Trangthai = trangthai;
	}

	public float getDiemtong() {
		return Diemtong;
	}

	public void setDiemtong(float diemtong) {
		Diemtong = diemtong;
	}

	public int getTinhtranghocphi() {
		return Tinhtranghocphi;
	}

	public void setTinhtranghocphi(int tinhtranghocphi) {
		Tinhtranghocphi = tinhtranghocphi;
	}

	public String getTrangthai() {
		return Trangthai;
	}

	public void setTrangthai(String trangthai) {
		Trangthai = trangthai;
	}

	public String getTentaikhoan() {
		return Tentaikhoan;
	}
	public void setTentaikhoan(String tentaikhoan) {
		Tentaikhoan = tentaikhoan;
	}
	public String getMakhoahoc() {
		return Makhoahoc;
	}
	public void setMakhoahoc(String makhoahoc) {
		Makhoahoc = makhoahoc;
	}
	
	
}
