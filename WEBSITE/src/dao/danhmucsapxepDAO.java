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
	public static void main(String[] agrs)
	{
		danhmucsapxepDAO dao = new danhmucsapxepDAO();
		for(danhmucsapxep d : dao.getDanhmucsapxep()){
			System.out.print(d.getMatinhtrang());
		}
		
	}
}
