package Models;

public class tailieu {
	private String Matailieu;
	private String Tentailieu;
	private String Link;
	private String Maloaitailieu;
	private String Makhoahoc;
	public tailieu() {
		super();
	}
	public tailieu(String matailieu, String tentailieu, String link,
			String maloaitailieu, String makhoahoc) {
		super();
		Matailieu = matailieu;
		Tentailieu = tentailieu;
		Link = link;
		Maloaitailieu = maloaitailieu;
		Makhoahoc = makhoahoc;
	}
	public String getMatailieu() {
		return Matailieu;
	}
	public void setMatailieu(String matailieu) {
		Matailieu = matailieu;
	}
	public String getTentailieu() {
		return Tentailieu;
	}
	public void setTentailieu(String tentailieu) {
		Tentailieu = tentailieu;
	}
	public String getLink() {
		return Link;
	}
	public void setLink(String link) {
		Link = link;
	}
	public String getMaloaitailieu() {
		return Maloaitailieu;
	}
	public void setMaloaitailieu(String maloaitailieu) {
		Maloaitailieu = maloaitailieu;
	}
	public String getMakhoahoc() {
		return Makhoahoc;
	}
	public void setMakhoahoc(String makhoahoc) {
		Makhoahoc = makhoahoc;
	}
	
}
