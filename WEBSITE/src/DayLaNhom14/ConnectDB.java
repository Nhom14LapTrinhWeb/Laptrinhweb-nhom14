package DayLaNhom14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectDB {
	public static boolean Login( String username,String pass)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection conn=null;
		Statement stm =null;
		ResultSet rs = null;
		boolean kt=false;
		
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:8080/cuoiki","root","phihung123789");
			stm=conn.createStatement();
			rs=stm.executeQuery("SELECT * FROM hocvien WHERE TentaikhoanHV ='"+username+"' AND Matkhau='"+pass+"'");
			kt = rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return kt;
	}
}
