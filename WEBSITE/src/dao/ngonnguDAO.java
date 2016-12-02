package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.PreparedStatement;

import connect.DBConnect;
import Models.danhmucsapxep;
import Models.ngonngu;

public class ngonnguDAO {
	public static ArrayList<ngonngu> getListNgonNgu()
	{
		Connection conn =DBConnect.getConnection();
		String sql ="SELECT * FROM ngonngu";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			ArrayList<ngonngu> list = new ArrayList<>();
			while(rs.next())
			{
				ngonngu nn = new ngonngu();
				nn.setMangonngu(rs.getString("Mangonngu"));
				nn.setTenngonngu(rs.getString("Tenngonngu"));
				list.add(nn);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static ngonngu getChiTietNgonNgu(String Mangonngu)
	{
		Connection conn = DBConnect.getConnection();
		String sql = "SELECT * FROM ngonngu WHERE Mangonngu='"+Mangonngu+"'";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			ngonngu nn = new ngonngu();
			while(rs.next())
			{
				nn.setMangonngu(rs.getString("Mangonngu"));
				nn.setTenngonngu(rs.getString("Tenngonngu"));
			}
			return nn;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static boolean ThemNgonNgu(ngonngu nn)
	{
		Connection conn = DBConnect.getConnection();
		String sql = "INSERT INTO ngonngu VALUES(?,?)";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(1, nn.getMangonngu());
			ps.setString(2, nn.getTenngonngu());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public static boolean SuaNgonNgu(ngonngu nn)
	{
		Connection conn = DBConnect.getConnection();
		String sql = "UPDATE ngonngu set Tenngonngu=? WHERE Mangonngu=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			
			ps.setString(1, nn.getTenngonngu());
			ps.setString(2, nn.getMangonngu());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public static boolean XoaNgonNgu(String Mangonngu)
	{
		Connection conn = DBConnect.getConnection();
		String sql = "DELETE FROM ngonngu WHERE Mangonngu=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			
			ps.setString(1, Mangonngu);
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
