package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

public class DBConnect {
	Connection conn=null;
	public static Connection getConnection(){
		Connection conn=null;
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hoclaptrinhonline?characterEncoding=utf8","root","phihung123789");
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
	public void ExecuteModifyQuery(String sql){
		getConnection();
		try {
			getConnection().createStatement().execute(sql);
			getConnection().close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public ResultSet getData(String sql)throws Exception{
		ResultSet rs =null;
		java.sql.Statement sta=conn.createStatement();
		rs=sta.executeQuery(sql);
		return rs;
	}
	public static void main(String[] args){
		System.out.println(getConnection());
	}
}
