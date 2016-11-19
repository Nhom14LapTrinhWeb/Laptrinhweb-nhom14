package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import connect.DBConnect;
import Models.Loaikhoahoc;

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
}
