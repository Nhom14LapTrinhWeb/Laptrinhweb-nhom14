package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Models.loaitailieu;
import connect.DBConnect;

public class loaitailieuDAO {
public static ArrayList<loaitailieu> getListLoaitailieu(){
		
		try {
			Connection connection =DBConnect.getConnection();
			String sql ="SELECT * FROM loaitailieu";
			PreparedStatement ps = connection.prepareCall(sql);
			ResultSet rs= ps.executeQuery();
			ArrayList<loaitailieu> list=new ArrayList<>();
			while(rs.next()){
				loaitailieu loaitl=new loaitailieu();
				loaitl.setMaloai(rs.getString("Maloai"));
				loaitl.setTenloai(rs.getString("Tenloai"));
				loaitl.setMota(rs.getString("Mota"));
				list.add(loaitl);
				
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	public loaitailieu getChiTietTaiLieu(String Maloai){
		try{
			Connection connection = DBConnect.getConnection();
			String sql ="SELECT * FROM loaitailieu WHERE Maloai='"+Maloai+"'";
			CallableStatement ps = connection.prepareCall(sql);
			ResultSet rs =ps.executeQuery();
			loaitailieu u = new loaitailieu();
			while(rs.next()){
				u.setMaloai(rs.getString("Maloai"));
				u.setTenloai(rs.getString("Tenloai"));
				u.setMota(rs.getString("Mota"));
			}
			return u;
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	public boolean ThemLoaiTaiLieu(loaitailieu l)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="INSERT INTO loaitailieu VALUES(?,?,?)";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(1,l.getMaloai());
			ps.setString(2,l.getTenloai());
			ps.setString(3, l.getMota());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return false;
	}
	
	public boolean SuaLoaiTaiLieu(loaitailieu l)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="UPDATE loaitailieu SET Tenloai=?,Mota=? WHERE Maloai=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(1,l.getTenloai());
			ps.setString(2,l.getMota());
			ps.setString(3,l.getMaloai());
			ps.executeUpdate();
			
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return false;
	}
	public boolean XoaLoaiTaiLieu(String Maloai)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="DELETE FROM loaitailieu WHERE Maloai=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(1,Maloai);
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return false;
	}
}
