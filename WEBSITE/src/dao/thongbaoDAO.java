package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Models.loaitailieu;
import Models.tailieu;
import Models.thongbao;
import connect.DBConnect;

public class thongbaoDAO {
	public ArrayList<thongbao> getListThongBao(){
		Connection conn = DBConnect.getConnection();
		String sql ="SELECT * FROM thongbao";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			ArrayList<thongbao> list = new ArrayList<>();
			while(rs.next())
			{
				thongbao tb = new thongbao();
				tb.setMathongbao(rs.getString("Mathongbao"));
				tb.setTenthongbao(rs.getString("Tenthongbao"));
				tb.setNoidung(rs.getString("Noidung"));
				list.add(tb);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public thongbao getChiTietThongBao(String Mathongbao){
		try{
			Connection connection = DBConnect.getConnection();
			String sql ="SELECT * FROM thongbao WHERE Mathongbao='"+Mathongbao+"'";
			CallableStatement ps = connection.prepareCall(sql);
			ResultSet rs =ps.executeQuery();
			thongbao tb = new thongbao();
			while(rs.next()){
				tb.setMathongbao(rs.getString("Mathongbao"));
				tb.setTenthongbao(rs.getString("Tenthongbao"));
				tb.setNoidung(rs.getString("Noidung"));
			}
			return tb;
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	public boolean ThemThongBao(thongbao tb)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="INSERT INTO thongbao VALUES(?,?,?)";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(1,tb.getMathongbao());
			ps.setString(2,tb.getTenthongbao());
			ps.setString(3, tb.getNoidung());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return false;
	}
	
	public boolean SuaThongBao(thongbao tb)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="UPDATE thongbao SET Tenthongbao=?,Noidung=? WHERE Mathongbao=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(3,tb.getMathongbao());
			ps.setString(1,tb.getTenthongbao());
			ps.setString(2, tb.getNoidung());
			ps.executeUpdate();
			
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return false;
	}
	public boolean XoaLoaiTaiLieu(String Mathongbao)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="DELETE FROM thongbao WHERE Mathongbao=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(1,Mathongbao);
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return false;
	}
}
