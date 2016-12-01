package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;
import Models.vaitro;

public class vaitroDAO {
	public static ArrayList<vaitro> getListVaiTro()
	{
		Connection conn = DBConnect.getConnection();
		String sql ="SELECT * FROM vaitro";
		try {
			PreparedStatement ps = conn.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			ArrayList<vaitro> list = new ArrayList<>();
			while(rs.next())
			{
				vaitro vt = new vaitro();
				vt.setMavaitro(rs.getString("Mavaitro"));
				vt.setTenvaitro(rs.getString("Tenvaitro"));
				list.add(vt);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
