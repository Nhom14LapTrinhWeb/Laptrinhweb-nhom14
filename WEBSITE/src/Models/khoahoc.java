package Models;
import java.sql.Date;
public class khoahoc {
	private String Makhoahoc;
	private String Tenkhoahoc;
	private int Hocphi;
	private String Lichhoc;
	private Date Thoigianmo;
	private Date Thoigianketthuc;
	private String Tengiangvien;
	private String Mangonngu;
	private String Mota;
	private String Hinhanh;
	private String Loaikhoahoc;
	private String Videogioithieu;
	private String Tinhtrang;
	
	
	
	public khoahoc(String makhoahoc, String tenkhoahoc, int hocphi,
			String lichhoc, Date thoigianmo, Date thoigianketthuc,
			String tengiangvien, String mangonngu, String mota, String hinhanh,
			String loaikhoahoc, String videogioithieu, String tinhtrang) {
		super();
		Makhoahoc = makhoahoc;
		Tenkhoahoc = tenkhoahoc;
		Hocphi = hocphi;
		Lichhoc = lichhoc;
		Thoigianmo = thoigianmo;
		Thoigianketthuc = thoigianketthuc;
		Tengiangvien = tengiangvien;
		Mangonngu = mangonngu;
		Mota = mota;
		Hinhanh = hinhanh;
		Loaikhoahoc = loaikhoahoc;
		Videogioithieu = videogioithieu;
		Tinhtrang = tinhtrang;
	}
	public String getTinhtrang() {
		return Tinhtrang;
	}
	public void setTinhtrang(String tinhtrang) {
		Tinhtrang = tinhtrang;
	}
	public String getVideogioithieu() {
		return Videogioithieu;
	}
	public void setVideogioithieu(String videogioithieu) {
		Videogioithieu = videogioithieu;
	}
	
	public khoahoc() {
		
	}
	public Date getThoigianmo() {
		return Thoigianmo;
	}
	public void setThoigianmo(Date thoigianmo) {
		Thoigianmo = thoigianmo;
	}
	public Date getThoigianketthuc() {
		return Thoigianketthuc;
	}
	public void setThoigianketthuc(Date thoigianketthuc) {
		Thoigianketthuc = thoigianketthuc;
	}
	public String getMangonngu() {
		return Mangonngu;
	}
	public void setMangonngu(String mangonngu) {
		Mangonngu = mangonngu;
	}
	public String getMota() {
		return Mota;
	}
	public void setMota(String mota) {
		Mota = mota;
	}
	public String getMakhoahoc() {
		return Makhoahoc;
	}
	public void setMakhoahoc(String makhoahoc) {
		Makhoahoc = makhoahoc;
	}
	public String getLoaikhoahoc() {
		return Loaikhoahoc;
	}
	public void setLoaikhoahoc(String loaikhoahoc) {
		Loaikhoahoc = loaikhoahoc;
	}
	public String getTenkhoahoc() {
		return Tenkhoahoc;
	}
	public void setTenkhoahoc(String tenkhoahoc) {
		Tenkhoahoc = tenkhoahoc;
	}
	public String getTengiangvien() {
		return Tengiangvien;
	}
	public void setTengiangvien(String tengiangvien) {
		Tengiangvien = tengiangvien;
	}
	public String getLichhoc() {
		return Lichhoc;
	}
	public void setLichhoc(String lichhoc) {
		Lichhoc = lichhoc;
	}
	public int getHocphi() {
		return Hocphi;
	}
	public void setHocphi(int hocphi) {
		Hocphi = hocphi;
	}
	public String getHinhanh() {
		return Hinhanh;
	}
	public void setHinhanh(String hinhanh) {
		Hinhanh = hinhanh;
	}
	
}
