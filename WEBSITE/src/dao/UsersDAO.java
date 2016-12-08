package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.ArrayList;
import java.util.List;

import Models.Users;
import Models.khoahoc;

import com.sun.istack.internal.logging.Logger;

import connect.DBConnect;

public class UsersDAO {
	public boolean checkTentaikhoan(String Tentaikhoan)
	{
		try
		{
			Connection conn = DBConnect.getConnection();
			String sql="SELECT * FROM taikhoan WHERE Tentaikhoan='"+Tentaikhoan+"'";
			PreparedStatement ps = conn.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				conn.close();
				return true;
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
		
	}
	public boolean InsertUser(Users u){
		Connection conn = DBConnect.getConnection();
		String sql ="INSERT INTO taikhoan VALUES(?,?,?,?,?,?,?,?)";
		try
		{
			PreparedStatement ps =conn.prepareCall(sql);
			ps.setString(1, u.getTentaikhoan());
			ps.setString(2, u.getHoten());
			ps.setDate(3, u.getNgaysinh());
			ps.setString(4, u.getDiachi());
			ps.setString(5, u.getEmail());
			ps.setString(6, u.getSDT());
			ps.setString(7, u.getMatkhau());
			ps.setString(8, u.getMavaitro());
			ps.executeUpdate();
			
			return true;
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean EditUsers(Users u)
	{
		String sql="UPDATE taikhoan set Hoten=?,Ngaysinh=?,Diachi=?,Email=?,SDT=?,Matkhau=?,Mavaitro=? WHERE Tentaikhoan=?";
		Connection conn = DBConnect.getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, u.getHoten());
			ps.setDate(2, u.getNgaysinh());
			ps.setString(3, u.getDiachi());
			ps.setString(4, u.getEmail());
			ps.setString(5, u.getSDT());
			ps.setString(6, u.getMatkhau());
			ps.setString(7, u.getMavaitro());
			ps.setString(8, u.getTentaikhoan());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean SetQuyen(String Tentaikhoan,String Vaitro)
	{
		String sql="UPDATE taikhoan set Mavaitro=? WHERE Tentaikhoan=?";
		Connection conn = DBConnect.getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,Vaitro);
			ps.setString(2, Tentaikhoan);
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public boolean Delete(String Tentaikhoan)
	{
		String sql ="DELETE FROM taikhoan WHERE Tentaikhoan=?";
		Connection conn=DBConnect.getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, Tentaikhoan);
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public ArrayList<Users> getListUserByVaiTro(String Mavaitro){
		
		try {
			Connection connection = DBConnect.getConnection();
			String sql = "SELECT * FROM taikhoan WHERE Mavaitro='"+Mavaitro+"'";
			CallableStatement ps= connection.prepareCall(sql);
			ResultSet rs= ps.executeQuery();
			ArrayList<Users> list=new ArrayList<>();
			while(rs.next()){
				Users u=new Users();
				u.setTentaikhoan(rs.getString("Tentaikhoan"));
				u.setEmail(rs.getString("Email"));
				u.setHoten(rs.getString("Hoten"));
				u.setDiachi(rs.getString("Diachi"));
				u.setSDT(rs.getString("SDT"));
				u.setMatkhau(rs.getString("Matkhau"));
				u.setNgaysinh(rs.getDate("Ngaysinh"));
				u.setMavaitro(rs.getString("Mavaitro"));
				list.add(u);
				
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	

public Users getChitietCaNhan(String Tentaikhoan){
	try{
		Connection connection = DBConnect.getConnection();
		String sql ="SELECT * FROM taikhoan WHERE Tentaikhoan='"+Tentaikhoan+"'";
		CallableStatement ps = connection.prepareCall(sql);
		ResultSet rs =ps.executeQuery();
		Users u = new Users();
		while(rs.next()){
			u.setTentaikhoan(rs.getString("Tentaikhoan"));
			u.setHoten(rs.getString("Hoten"));
			u.setDiachi(rs.getString("Diachi"));
			u.setEmail(rs.getString("Email"));
			u.setNgaysinh(rs.getDate("Ngaysinh"));
			u.setSDT(rs.getString("SDT"));
			u.setMavaitro(rs.getString("Mavaitro"));
			u.setMatkhau(rs.getString("Matkhau"));
		}
		return u;
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
	
}
public Users login(String username, String password) {
	Connection con = DBConnect.getConnection();
	String sql = "select * from taikhoan where Tentaikhoan='" + username + 
			"' and Matkhau='" + password + "'";
	PreparedStatement ps;
	try {
		
		ps = (PreparedStatement) con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			Users u = new Users();
			u.setTentaikhoan(rs.getString("Tentaikhoan"));
			u.setMatkhau(rs.getString("Matkhau"));
			u.setMavaitro(rs.getString("Mavaitro"));
			con.close();
			return u;
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return null;
}
}
