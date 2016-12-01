package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.PreparedStatement;

import connect.DBConnect;
import Models.khoahoc;

public class khoahocDAO {
	public static ArrayList<khoahoc> getListKhoaHoc()
	{
		try {
			Connection connection =DBConnect.getConnection();
			String sql ="SELECT * FROM khoahoc";
			PreparedStatement ps = connection.prepareCall(sql);
			ResultSet rs= ps.executeQuery();
			ArrayList<khoahoc> list=new ArrayList<>();
			while(rs.next()){
				khoahoc khoahoc=new khoahoc();
				khoahoc.setHinhanh(rs.getString("Hinhanh"));
				khoahoc.setLoaikhoahoc(rs.getString("Loaikhoahoc"));
				khoahoc.setMakhoahoc(rs.getString("Makhoahoc"));
				khoahoc.setTenkhoahoc(rs.getString("Tenkhoahoc"));
				khoahoc.setTengiangvien(rs.getString("Tengiangvien"));
				khoahoc.setLichhoc(rs.getString("Lichhoc"));
				khoahoc.setHocphi(rs.getInt("Hocphi"));
				khoahoc.setThoigianmo(rs.getDate("Thoigianmo"));
				khoahoc.setThoigianketthuc(rs.getDate("Thoigianketthuc"));
				khoahoc.setMangonngu(rs.getString("Mangonngu"));
				khoahoc.setMota(rs.getString("Mota"));
				khoahoc.setVideogioithieu(rs.getString("Videogioithieu"));
				khoahoc.setTinhtrang(rs.getString("Tinhtrang"));
				list.add(khoahoc);
				
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public ArrayList<khoahoc> getListKhoahocByLoaikhoahoc(String Loaikhoahoc){
		
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "SELECT * FROM khoahoc WHERE Loaikhoahoc='"+Loaikhoahoc+"'";
			CallableStatement ps= connection.prepareCall(sql);
			ResultSet rs= ps.executeQuery();
			ArrayList<khoahoc> list=new ArrayList<>();
			while(rs.next()){
				khoahoc kh=new khoahoc();
				kh.setHinhanh(rs.getString("Hinhanh"));
				kh.setLoaikhoahoc(rs.getString("Loaikhoahoc"));
				kh.setMakhoahoc(rs.getString("Makhoahoc"));
				kh.setTenkhoahoc(rs.getString("Tenkhoahoc"));
				kh.setTengiangvien(rs.getString("Tengiangvien"));
				kh.setLichhoc(rs.getString("Lichhoc"));
				kh.setHocphi(rs.getInt("Hocphi"));
				list.add(kh);
				
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
public ArrayList<khoahoc> getListKhoahocByTaiKhoan(String Tentaikhoan){
		
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "SELECT * FROM khoahoc WHERE Tengiangvien='"+Tentaikhoan+"'";
			CallableStatement ps= connection.prepareCall(sql);
			ResultSet rs= ps.executeQuery();
			ArrayList<khoahoc> list=new ArrayList<>();
			while(rs.next()){
				khoahoc khoahoc=new khoahoc();
				khoahoc.setHinhanh(rs.getString("Hinhanh"));
				khoahoc.setLoaikhoahoc(rs.getString("Loaikhoahoc"));
				khoahoc.setMakhoahoc(rs.getString("Makhoahoc"));
				khoahoc.setTenkhoahoc(rs.getString("Tenkhoahoc"));
				khoahoc.setTengiangvien(rs.getString("Tengiangvien"));
				khoahoc.setLichhoc(rs.getString("Lichhoc"));
				khoahoc.setHocphi(rs.getInt("Hocphi"));
				khoahoc.setThoigianmo(rs.getDate("Thoigianmo"));
				khoahoc.setThoigianketthuc(rs.getDate("Thoigianketthuc"));
				khoahoc.setMangonngu(rs.getString("Mangonngu"));
				khoahoc.setMota(rs.getString("Mota"));
				khoahoc.setVideogioithieu(rs.getString("Videogioithieu"));
				khoahoc.setTinhtrang(rs.getString("Tinhtrang"));
				list.add(khoahoc);
				
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	public ArrayList<khoahoc> getListKhoahocByMatingtrang(String Matinhtrang){
		
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "SELECT * FROM khoahoc WHERE Tinhtrang='"+Matinhtrang+"'";
			CallableStatement ps= connection.prepareCall(sql);
			ResultSet rs= ps.executeQuery();
			ArrayList<khoahoc> list=new ArrayList<>();
			while(rs.next()){
				khoahoc kh=new khoahoc();
				kh.setHinhanh(rs.getString("Hinhanh"));
				kh.setLoaikhoahoc(rs.getString("Loaikhoahoc"));
				kh.setMakhoahoc(rs.getString("Makhoahoc"));
				kh.setTenkhoahoc(rs.getString("Tenkhoahoc"));
				kh.setTengiangvien(rs.getString("Tengiangvien"));
				kh.setLichhoc(rs.getString("Lichhoc"));
				kh.setHocphi(rs.getInt("Hocphi"));
				list.add(kh);
				
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	public ArrayList<khoahoc> getListKhoahocByTimKiem(String Chuoi){
	
	try {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM khoahoc WHERE Makhoahoc LIKE '%"+Chuoi+
				"%' OR Tenkhoahoc LIKE '%"+Chuoi+"%' OR Tengiangvien LIKE '%"+Chuoi+"%'" ;
		CallableStatement ps= connection.prepareCall(sql);
		ResultSet rs= ps.executeQuery();
		ArrayList<khoahoc> list=new ArrayList<>();
		while(rs.next()){
			khoahoc kh=new khoahoc();
			kh.setHinhanh(rs.getString("Hinhanh"));
			kh.setLoaikhoahoc(rs.getString("Loaikhoahoc"));
			kh.setMakhoahoc(rs.getString("Makhoahoc"));
			kh.setTenkhoahoc(rs.getString("Tenkhoahoc"));
			kh.setTengiangvien(rs.getString("Tengiangvien"));
			kh.setLichhoc(rs.getString("Lichhoc"));
			kh.setHocphi(rs.getInt("Hocphi"));
			list.add(kh);
			
		}
		return list;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
	
}
	public ArrayList<khoahoc> getListKhoahocMienPhi(){
		
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "SELECT * FROM khoahoc WHERE Hocphi=0";
			CallableStatement ps= connection.prepareCall(sql);
			ResultSet rs= ps.executeQuery();
			ArrayList<khoahoc> list=new ArrayList<>();
			while(rs.next()){
				khoahoc kh=new khoahoc();
				kh.setHinhanh(rs.getString("Hinhanh"));
				kh.setLoaikhoahoc(rs.getString("Loaikhoahoc"));
				kh.setMakhoahoc(rs.getString("Makhoahoc"));
				kh.setTenkhoahoc(rs.getString("Tenkhoahoc"));
				kh.setTengiangvien(rs.getString("Tengiangvien"));
				kh.setLichhoc(rs.getString("Lichhoc"));
				kh.setHocphi(rs.getInt("Hocphi"));
				list.add(kh);
				
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	public khoahoc getChitietkhoahoc(String Makhoahoc){
		try{
			Connection connection = DBConnect.getConnection();
			String sql ="SELECT * FROM khoahoc WHERE Makhoahoc='"+Makhoahoc+"'";
			CallableStatement ps = connection.prepareCall(sql);
			ResultSet rs =ps.executeQuery();
			khoahoc kh = new khoahoc();
			while(rs.next()){
				kh.setHinhanh(rs.getString("Hinhanh"));
				kh.setLoaikhoahoc(rs.getString("Loaikhoahoc"));
				kh.setMakhoahoc(rs.getString("Makhoahoc"));
				kh.setTenkhoahoc(rs.getString("Tenkhoahoc"));
				kh.setTengiangvien(rs.getString("Tengiangvien"));
				kh.setLichhoc(rs.getString("Lichhoc"));
				kh.setHocphi(rs.getInt("Hocphi"));
				kh.setThoigianmo(rs.getDate("Thoigianmo"));
				kh.setThoigianketthuc(rs.getDate("Thoigianketthuc"));
				kh.setMangonngu(rs.getString("Mangonngu"));
				kh.setMota(rs.getString("Mota"));
				kh.setVideogioithieu(rs.getString("Videogioithieu"));
				kh.setTinhtrang(rs.getString("Tinhtrang"));
			}
			return kh;
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	public boolean InsertKhoaHoc(khoahoc kh)
{
	Connection conn = DBConnect.getConnection();
	String sql ="INSERT INTO khoahoc VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
	try {
		PreparedStatement ps =conn.prepareCall(sql);
		ps.setString(1, kh.getMakhoahoc());
		ps.setString(2, kh.getTenkhoahoc());
		ps.setInt(3, kh.getHocphi());
		ps.setString(4, kh.getLichhoc());
		ps.setDate(5, kh.getThoigianmo());
		ps.setDate(6, kh.getThoigianketthuc());
		ps.setString(7, kh.getTengiangvien());
		ps.setString(8, kh.getMangonngu());
		ps.setString(9, kh.getMota());
		ps.setString(10, kh.getHinhanh());
		ps.setString(11, kh.getLoaikhoahoc());
		ps.setString(12, kh.getVideogioithieu());
		ps.setString(13, kh.getTinhtrang());
		ps.executeUpdate();
		return true;
		
	} catch (SQLException e) {
		
	}
	return false;
}
	public boolean SuaKhoaHoc(khoahoc kh)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="UPDATE khoahoc SET Tenkhoahoc=?,Hocphi=?,Lichhoc=?,Thoigianmo=?,Thoigianketthuc=?,Tengiangvien=?,Mangonngu=?,Mota=?,Hinhanh=?,Loaikhoahoc=?,Videogioithieu=?,Tinhtrang=? WHERE Makhoahoc=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			
			ps.setString(1, kh.getTenkhoahoc());
			ps.setInt(2, kh.getHocphi());
			ps.setString(3, kh.getLichhoc());
			ps.setDate(4, kh.getThoigianmo());
			ps.setDate(5, kh.getThoigianketthuc());
			ps.setString(6, kh.getTengiangvien());
			ps.setString(7, kh.getMangonngu());
			ps.setString(8, kh.getMota());
			ps.setString(9, kh.getHinhanh());
			ps.setString(10, kh.getLoaikhoahoc());
			ps.setString(11, kh.getVideogioithieu());
			ps.setString(12, kh.getTinhtrang());
			ps.setString(13, kh.getMakhoahoc());
			ps.executeUpdate();
			
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return false;
	}
	public boolean XoaKhoaHoc(String makhoahoc)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="DELETE FROM khoahoc WHERE Makhoahoc=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(1, makhoahoc);
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return false;
	}
	public static void main(String[] args)
	{
		khoahocDAO dao = new khoahocDAO();
		
		/*if(dao.InsertKhoaHoc(new khoahoc("KH10","Lap trinh",0, "ggg",Date.valueOf("2017-10-03"), Date.valueOf("2017-10-03"), "nguyenhadong", "NN04", "aa", "aa", "LKH01", "aa", "TT01")))
			System.out.print("oh yeh");
		else
			System.out.print("phac");*/
		if(dao.SuaKhoaHoc(new khoahoc("KH07","Lap trinh",0, "ggg",Date.valueOf("2017-10-03"), Date.valueOf("2017-10-03"), "nguyenhadong", "NN04", "aa", "aa", "LKH01", "bbbb", "TT01")))
			System.out.print("oh yeh");
		else
			System.out.print("phac");
		//System.out.print(dao.SuaLoaiKhoaHoc(new Loaikhoahoc("LKH02","Website")));
		//System.out.print(dao.XoaLoaiKhoaHoc("LKH05"));
	}
}
