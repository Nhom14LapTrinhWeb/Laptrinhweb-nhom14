package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

import connect.DBConnect;
import Models.Users;
import Models.khoahoc;

public class khoahocDAO {
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
			}
			return kh;
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}


}
