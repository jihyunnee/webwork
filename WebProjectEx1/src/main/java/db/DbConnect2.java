package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbConnect2 {
	
	final static String MYSQL_DRIVER="com.mysql.cj.jdbc.Driver";
	static final String MYSQL_URL="jdbc:mysql://localhost:3306/bit701?serverTimezone=Asia/Seoul";
	
	static final String ORACLE_DRIVER="oracle.jdbc.driver.OracleDriver";
	static final String ORACLE_URL="jdbc:oracle:thin:@localhost:1521:xe";
	
	public DbConnect2() {
		// TODO Auto-generated constructor stub
		
		try {
			Class.forName(MYSQL_DRIVER);
			//System.out.println("mysql 드라이버 성공");
		} catch (ClassNotFoundException e) {
			System.out.println("mysql 드라이버 실패:"+e.getMessage());
		}
		
		
		
	}
	
	
	
	public Connection getMysqlConnection()
	{
		Connection conn=null;
		try {
			conn=DriverManager.getConnection(MYSQL_URL, "mac", "12345678");
			//System.out.println("로칼 Mysql 연결 성공");
		} catch (SQLException e) {
			System.out.println("로칼 Mysql 연결 실패:"+e.getMessage());
		}
		return conn;
	}
	
	public void dbClose(PreparedStatement pstmt,Connection conn) {
		try {
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}catch (SQLException e) {
						
		}
	}
	
	public void dbClose(ResultSet rs,PreparedStatement pstmt,Connection conn) {
		try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}catch (SQLException e) {
			
		}
	}
	
	
	

}
