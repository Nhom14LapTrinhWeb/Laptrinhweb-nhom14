package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Models.dangkihoc;
import connect.DBConnect;

public class dangkihocDAO {
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
			ps.setString(5, dk.getTrangthai());
			ps.executeUpdate();
			
			return true;
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
