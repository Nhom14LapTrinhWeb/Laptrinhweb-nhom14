package Models;
import java.sql.Date;
public class khoahoc {
	private String Makhoahoc;
	private String Loaikhoahoc;
	private String Tenkhoahoc;
	private String Tengiangvien;
	private String Lichhoc;
	private int Hocphi;
	private String Hinhanh;
	private Date Thoigianmo;
	private Date Thoigianketthuc;
	private String Mangonngu;
	private String Mota;
	private String Videogioithieu;
	
	public khoahoc(String makhoahoc, String loaikhoahoc, String tenkhoahoc,
			String tengiangvien, String lichhoc, int hocphi, String hinhanh,
			Date thoigianmo, Date thoigianketthuc, String mangonngu,
			String mota, String videogioithieu) {
		super();
		Makhoahoc = makhoahoc;
		Loaikhoahoc = loaikhoahoc;
		Tenkhoahoc = tenkhoahoc;
		Tengiangvien = tengiangvien;
		Lichhoc = lichhoc;
		Hocphi = hocphi;
		Hinhanh = hinhanh;
		Thoigianmo = thoigianmo;
		Thoigianketthuc = thoigianketthuc;
		Mangonngu = mangonngu;
		Mota = mota;
		Videogioithieu = videogioithieu;
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
