package DayLaNhom14;

import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class ConnectDB {
	public static boolean LoginHV( String username,String pass)
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
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hoclaptrinhonline?characterEncoding=utf8","root","phihung123789");
			stm=conn.createStatement();
			rs=stm.executeQuery("SELECT * FROM taikhoan WHERE Tentaikhoan ='"+username+"' AND Matkhau='"+pass+
					"'AND  Mavaitro='VT01'");
			kt = rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return kt;
	}
	
	//GV
	public static boolean LoginGV( String username,String pass)
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
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hoclaptrinhonline?characterEncoding=utf8","root","phihung123789");
			stm=conn.createStatement();
			rs=stm.executeQuery("SELECT * FROM taikhoan WHERE Tentaikhoan ='"+username+"' AND Matkhau='"+pass+
					"'AND Mavaitro='VT02'");
			kt = rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return kt;
	}
	public static boolean LoginAd( String username,String pass)
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
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hoclaptrinhonline?characterEncoding=utf8","root","phihung123789");
			stm=conn.createStatement();
			rs=stm.executeQuery("SELECT * FROM taikhoan WHERE Tentaikhoan ='"+username+"' AND Matkhau='"+pass+
					"'AND  Mavaitro='VT03'");
			kt = rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return kt;
	}
	
}
