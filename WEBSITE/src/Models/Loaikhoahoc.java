package Models;

public class Loaikhoahoc {
	private String LoaiKH;
	private String Tenloai;
	
	public Loaikhoahoc() {
		
	}

	public Loaikhoahoc(String loaiKH, String tenloai) {
		super();
		LoaiKH = loaiKH;
		Tenloai = tenloai;
	}

	public String getLoaiKH() {
		return LoaiKH;
	}

	public void setLoaiKH(String loaiKH) {
		LoaiKH = loaiKH;
	}

	public String getTenloai() {
		return Tenloai;
	}

	public void setTenloai(String tenloai) {
		Tenloai = tenloai;
	}
	
}
