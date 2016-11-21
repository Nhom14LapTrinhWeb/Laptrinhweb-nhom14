package Models;

public class danhmucsapxep {
	private String Matinhtrang;
	private String Tentinhtrang;
	private String Mota;
	public danhmucsapxep() {
		super();
	}
	public danhmucsapxep(String matinhtrang, String tentinhtrang, String mota) {
		super();
		Matinhtrang = matinhtrang;
		Tentinhtrang = tentinhtrang;
		Mota = mota;
	}
	public String getMatinhtrang() {
		return Matinhtrang;
	}
	public void setMatinhtrang(String matinhtrang) {
		Matinhtrang = matinhtrang;
	}
	public String getTentinhtrang() {
		return Tentinhtrang;
	}
	public void setTentinhtrang(String tentinhtrang) {
		Tentinhtrang = tentinhtrang;
	}
	public String getMota() {
		return Mota;
	}
	public void setMota(String mota) {
		Mota = mota;
	}
	
}
