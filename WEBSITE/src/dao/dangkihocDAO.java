package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Models.dangkihoc;
import connect.DBConnect;

public class dangkihocDAO {
	public static ArrayList<dangkihoc> getListThamGia()
	{
		Connection conn = DBConnect.getConnection();
		String sql ="SELECT * FROM thamgia";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			ArrayList<dangkihoc> list = new ArrayList<>();
			while(rs.next())
			{
				dangkihoc tg = new dangkihoc();
				tg.setTentaikhoan(rs.getString("Tentaikhoan"));
				tg.setMakhoahoc(rs.getString("Makhoahoc"));
				tg.setDiemtong(rs.getFloat("Diemtong"));
				tg.setTinhtranghocphi(rs.getInt("Tinhtranghocphi"));
				tg.setTrangthai(rs.getInt("Trangthai"));
				list.add(tg);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static dangkihoc getChiTietThamGia(String Tentaikhoan,String Makhoahoc)
	{
		Connection conn = DBConnect.getConnection();
		String sql = "SELECT * FROM thamgia WHERE Tentaikhoan='"+Tentaikhoan+"' AND Makhoahoc='"+Makhoahoc+"'";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			dangkihoc tt = new dangkihoc();
			while(rs.next())
			{
				tt.setTentaikhoan(rs.getString("Tentaikhoan"));
				tt.setMakhoahoc(rs.getString("Makhoahoc"));
				tt.setDiemtong(rs.getFloat("Diemtong"));
				tt.setTinhtranghocphi(rs.getInt("Tinhtranghocphi"));
				tt.setTrangthai(rs.getInt("Trangthai"));
			}
			return tt;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public boolean ThemDangKiHoc(dangkihoc dk){
		Connection conn = DBConnect.getConnection();
		String sql ="INSERT INTO thamgia VALUES(?,?,?,?,?)";
		try
		{
			PreparedStatement ps =conn.prepareCall(sql);
			ps.setString(1, dk.getTentaikhoan());
			ps.setString(2, dk.getMakhoahoc());
			ps.setFloat(3, dk.getDiemtong());
			ps.setInt(4, dk.getTinhtranghocphi());
			ps.setInt(5, dk.getTrangthai());
			ps.executeUpdate();
			
			return true;
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean SuaThamGia(dangkihoc dk)
	{
		Connection conn = DBConnect.getConnection();
		String sql = "UPDATE thamgia set Diemtong=?,Tinhtranghocphi=?,Trangthai=? WHERE Tentaikhoan=? AND Makhoahoc=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setFloat(1, dk.getDiemtong());
			ps.setInt(2, dk.getTinhtranghocphi());
			ps.setInt(3, dk.getTrangthai());
			ps.setString(4, dk.getTentaikhoan());
			ps.setString(5, dk.getMakhoahoc());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean HuyThamGia(dangkihoc dk)
	{
		Connection conn = DBConnect.getConnection();
		String sql = "UPDATE thamgia set Trangthai=? WHERE Tentaikhoan=? AND Makhoahoc=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setInt(1, dk.getTrangthai());
			ps.setString(2, dk.getTentaikhoan());
			ps.setString(3, dk.getMakhoahoc());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean XoaThamGia(String Tentaikhoan,String Makhoahoc)
	{
		Connection conn = DBConnect.getConnection();
		String sql = "DELETE FROM thamgia WHERE Tentaikhoan=? AND Makhoahoc=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			
			ps.setString(1, Tentaikhoan);
			ps.setString(2, Makhoahoc);
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public static void main(String[] args)
	{
		dangkihocDAO dao= new dangkihocDAO();
		System.out.print(dao.getChiTietThamGia("huynhphihung", "KH03"));

	}
}
