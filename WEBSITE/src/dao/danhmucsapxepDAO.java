package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import connect.DBConnect;
import Models.danhmucsapxep;

public class danhmucsapxepDAO {
	public static ArrayList<danhmucsapxep> getDanhmucsapxep(){
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "SELECT * FROM tinhtrang";
			PreparedStatement ps= connection.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			ArrayList<danhmucsapxep> list = new ArrayList<>();
			while(rs.next())
			{
				danhmucsapxep xs = new danhmucsapxep();
				xs.setMatinhtrang(rs.getString("Matinhtrang"));
				xs.setTentinhtrang(rs.getString("Tentinhtrang"));
				xs.setMota(rs.getString("Mota"));
				list.add(xs);
			}
			return list;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	public static danhmucsapxep getChiTietTinhTrang(String Matinhtrang)
	{
		Connection conn = DBConnect.getConnection();
		String sql = "SELECT * FROM tinhtrang WHERE Matinhtrang='"+Matinhtrang+"'";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			danhmucsapxep sx = new danhmucsapxep();
			while(rs.next())
			{
				sx.setMatinhtrang(rs.getString("Matinhtrang"));
				sx.setTentinhtrang(rs.getString("Tentinhtrang"));
				sx.setMota(rs.getString("Mota"));
				
			}
			return sx;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static boolean ThemTinhTrang(danhmucsapxep sx)
	{
		Connection conn = DBConnect.getConnection();
		String sql = "INSERT INTO tinhtrang VALUES(?,?,?)";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(1, sx.getMatinhtrang());
			ps.setString(2, sx.getTentinhtrang());
			ps.setString(3, sx.getMota());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public static boolean SuaTinhTrang(danhmucsapxep sx)
	{
		Connection conn = DBConnect.getConnection();
		String sql = "UPDATE tinhtrang set Tentinhtrang=?,Mota=? WHERE Matinhtrang=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			
			ps.setString(1, sx.getTentinhtrang());
			ps.setString(2, sx.getMota());
			ps.setString(3, sx.getMatinhtrang());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public static boolean XoaTinhTrang(String Matinhtrang)
	{
		Connection conn = DBConnect.getConnection();
		String sql = "DELETE FROM tinhtrang WHERE Matinhtrang=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			
			ps.setString(1, Matinhtrang);
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public static void main(String[] agrs)
	{
		danhmucsapxepDAO dao = new danhmucsapxepDAO();
		for(danhmucsapxep d : dao.getDanhmucsapxep()){
			System.out.print(d.getMatinhtrang());
		}
		
	}
}
