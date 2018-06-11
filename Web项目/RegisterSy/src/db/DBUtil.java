package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Driver;

//import com.mysql.jdbc.Driver;

public class DBUtil {

	private static final String URL="jdbc:mysql://127.0.0.1:3306/test?useUnicode=true&characterEncoding=utf8";
	private static final String USER="";
	private static final String PASSWORD="";
	
	private static Connection conn = null;
	
	static {
		//1。连接数据库
				try {
					Class.forName("com.mysql.jdbc.Driver");
					//2.获取连接
					conn=DriverManager.getConnection(URL,USER,PASSWORD);
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	}
	public static Connection getConnection() {
		return conn;
	}
/*	
public static void main(String[] args) {
		
		try
		{
		   Connection conn = DBUtil.getConnection();
		   if(conn!=null)
		   {
			   System.out.println("连接成功");
		   }
		   else
		   {
			   System.out.println("连接失败");
		   }
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}*/
}
