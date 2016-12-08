package Models;

public class thongbao {
	private String Mathongbao;
	private String Tenthongbao;
	private String Noidung;
	public thongbao() {
		super();
	}
	public thongbao(String mathongbao, String tenthongbao, String noidung) {
		super();
		Mathongbao = mathongbao;
		Tenthongbao = tenthongbao;
		Noidung = noidung;
	}
	public String getMathongbao() {
		return Mathongbao;
	}
	public void setMathongbao(String mathongbao) {
		Mathongbao = mathongbao;
	}
	public String getTenthongbao() {
		return Tenthongbao;
	}
	public void setTenthongbao(String tenthongbao) {
		Tenthongbao = tenthongbao;
	}
	public String getNoidung() {
		return Noidung;
	}
	public void setNoidung(String noidung) {
		Noidung = noidung;
	}
	
}
