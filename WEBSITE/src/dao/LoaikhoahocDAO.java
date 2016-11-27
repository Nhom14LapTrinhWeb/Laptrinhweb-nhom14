package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.PreparedStatement;

import sun.misc.Request;
import connect.DBConnect;
import Models.Loaikhoahoc;
import Models.Users;

public class LoaikhoahocDAO {
	public static ArrayList<Loaikhoahoc> getListLoaikhoahoc(){
		
		try {
			Connection connection =DBConnect.getConnection();
			String sql ="SELECT * FROM loaikhoahoc";
			PreparedStatement ps = connection.prepareCall(sql);
			ResultSet rs= ps.executeQuery();
			ArrayList<Loaikhoahoc> list=new ArrayList<>();
			while(rs.next()){
				Loaikhoahoc loaikhoahoc=new Loaikhoahoc();
				loaikhoahoc.setLoaiKH(rs.getString("LoaiKH"));
				loaikhoahoc.setTenloai(rs.getString("Tenloai"));
				list.add(loaikhoahoc);
				
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	public Loaikhoahoc getLoaikhoahoc(String Maloai){
		try{
			Connection connection = DBConnect.getConnection();
			String sql ="SELECT * FROM loaikhoahoc WHERE LoaiKH='"+Maloai+"'";
			CallableStatement ps = connection.prepareCall(sql);
			ResultSet rs =ps.executeQuery();
			Loaikhoahoc u = new Loaikhoahoc();
			while(rs.next()){
				u.setLoaiKH(rs.getString("LoaiKH"));
				u.setTenloai(rs.getString("Tenloai"));
			}
			return u;
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	public boolean ThemLoaiKhoaHoc(Loaikhoahoc l)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="INSERT INTO loaikhoahoc VALUES(?,?)";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(1,l.getLoaiKH());
			ps.setString(2,l.getTenloai());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return false;
	}
	
	public boolean SuaLoaiKhoaHoc(Loaikhoahoc l)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="UPDATE loaikhoahoc SET Tenloai=? WHERE LoaiKH=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(1,l.getTenloai());
			ps.setString(2,l.getLoaiKH());
			ps.executeUpdate();
			
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		return false;
	}
	public boolean XoaLoaiKhoaHoc(String LoaiKH)
	{
		Connection conn = DBConnect.getConnection();
		String sql ="DELETE FROM loaikhoahoc WHERE LoaiKH=?";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ps.setString(1,LoaiKH);
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
		LoaikhoahocDAO dao = new LoaikhoahocDAO();
		/*for(int i = 0;i<3;i++)
		{
			dao.ThemLoaiKhoaHoc(new Loaikhoahoc("LKH05","Lap trinh game"));
		}*/
		//System.out.print(dao.SuaLoaiKhoaHoc(new Loaikhoahoc("LKH02","Website")));
		//System.out.print(dao.XoaLoaiKhoaHoc("LKH05"));
	}
}
