package Models;

public class loaitailieu {
	private String Maloai;
	private String Tenloai;
	private String Mota;
	public loaitailieu() {
		super();
	}
	public loaitailieu(String maloai, String tenloai, String mota) {
		super();
		Maloai = maloai;
		Tenloai = tenloai;
		Mota = mota;
	}
	public String getMaloai() {
		return Maloai;
	}
	public void setMaloai(String maloai) {
		Maloai = maloai;
	}
	public String getTenloai() {
		return Tenloai;
	}
	public void setTenloai(String tenloai) {
		Tenloai = tenloai;
	}
	public String getMota() {
		return Mota;
	}
	public void setMota(String mota) {
		Mota = mota;
	}
	
	
}
