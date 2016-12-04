package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;
import Models.loaitailieu;
import Models.tailieu;

public class tailieuDAO {
	public ArrayList<tailieu> getListTaiLieu(){
		Connection conn = DBConnect.getConnection();
		String sql ="SELECT * FROM tailieu";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			ArrayList<tailieu> list = new ArrayList<>();
			while(rs.next())
			{
				tailieu tl = new tailieu();
				tl.setMatailieu(rs.getString("Matailieu"));
				tl.setTentailieu(rs.getString("Tentailieu"));
				tl.setLink(rs.getString("Link"));
				tl.setMaloaitailieu(rs.getString("Maloaitailieu"));
				tl.setMakhoahoc(rs.getString("Makhoahoc"));
				list.add(tl);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public ArrayList<tailieu> getListTaiLieuByMatailieu(String Matailieu){
		Connection conn = DBConnect.getConnection();
		String sql ="SELECT * FROM tailieu WHERE Matailieu='"+Matailieu+"'";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			ArrayList<tailieu> list = new ArrayList<>();
			while(rs.next())
			{
				tailieu tl = new tailieu();
				tl.setMatailieu(rs.getString("Matailieu"));
				tl.setTentailieu(rs.getString("Tentailieu"));
				tl.setLink(rs.getString("Link"));
				tl.setMaloaitailieu(rs.getString("Maloaitailieu"));
				tl.setMakhoahoc(rs.getString("Makhoahoc"));
				list.add(tl);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public ArrayList<tailieu> getListTaiLieuByMaKhoaHoc(String Makhoahoc){
		Connection conn = DBConnect.getConnection();
		String sql ="SELECT * FROM tailieu WHERE Makhoahoc='"+Makhoahoc+"'";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			ArrayList<tailieu> list = new ArrayList<>();
			while(rs.next())
			{
				tailieu tl = new tailieu();
				tl.setMatailieu(rs.getString("Matailieu"));
				tl.setTentailieu(rs.getString("Tentailieu"));
				tl.setLink(rs.getString("Link"));
				tl.setMaloaitailieu(rs.getString("Maloaitailieu"));
				tl.setMakhoahoc(rs.getString("Makhoahoc"));
				list.add(tl);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public ArrayList<tailieu> getListTaiLieuByMaKHAndMaLoaiTL(String Makhoahoc,String Maloaitailieu){
		Connection conn = DBConnect.getConnection();
		String sql ="SELECT * FROM tailieu WHERE Makhoahoc='"+Makhoahoc+"' AND Maloaitailieu='"+Maloaitailieu+"'";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			ArrayList<tailieu> list = new ArrayList<>();
			while(rs.next())
			{
				tailieu tl = new tailieu();
				tl.setMatailieu(rs.getString("Matailieu"));
				tl.setTentailieu(rs.getString("Tentailieu"));
				tl.setLink(rs.getString("Link"));
				tl.setMaloaitailieu(rs.getString("Maloaitailieu"));
				tl.setMakhoahoc(rs.getString("Makhoahoc"));
				list.add(tl);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static tailieu getChiTietTaiLieu(String Matailieu)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="SELECT * FROM tailieu WHERE Matailieu='"+Matailieu+"'";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			tailieu tl = new tailieu();
			while(rs.next())
			{
				tl.setMatailieu(rs.getString("Matailieu"));
				tl.setTentailieu(rs.getString("Tentailieu"));
				tl.setLink(rs.getString("Link"));
				tl.setMaloaitailieu(rs.getString("Maloaitailieu"));
				tl.setMakhoahoc(rs.getString("Makhoahoc"));
			}
			return tl;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public boolean ThemTaiLieu(tailieu l)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="INSERT INTO tailieu VALUES(?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(1,l.getMatailieu());
			ps.setString(2,l.getTentailieu());
			ps.setString(3, l.getLink());
			ps.setString(4, l.getMaloaitailieu());
			ps.setString(5, l.getMakhoahoc());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return false;
	}
	
	public boolean SuaTaiLieu(tailieu l)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="UPDATE tailieu SET Tentailieu=?,Link=?,Maloaitailieu=?,Makhoahoc=? WHERE Matailieu=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(1,l.getTentailieu());
			ps.setString(2,l.getLink());
			ps.setString(3,l.getMaloaitailieu());
			ps.setString(4,l.getMakhoahoc());
			ps.setString(5,l.getMatailieu());
			ps.executeUpdate();
			
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return false;
	}
	public boolean XoaTaiLieu(String Matailieu)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="DELETE FROM loaitailieu WHERE Matailieu=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(1,Matailieu);
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return false;
	}
}
