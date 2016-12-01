package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.PreparedStatement;

import connect.DBConnect;
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
}
