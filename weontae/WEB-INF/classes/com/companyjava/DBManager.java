package com.companyjava;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;
public class DBManager {
	private static Connection conn;
	public DBManager() {conn=null;}
	public static Connection getInstance() {
		return conn;
	}
	public Connection getConnection() throws Exception{
		try {
			/**
				Class.forName("com.mysql.jdbc.Driver"); 
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wjdans142","root","1234");
				//conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/wjdans142","wjdans142","a4589zz!!");
			 * **/
			//1.Context 에 설정한 리소스 찾기  - server.xml
			Context initContext = new InitialContext();
			//2.java:/comp/env java로 작성된 환경찾기 
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			//3.error 날 경우 설정 DataSource 형식으로 설정해서 보여주기
			//DataSource ds = (DataSource)envContext.lookup("jdbc/mvcboard");
			DataSource ds = (DataSource)envContext.lookup("jdbc/wjdans142");
			//4.DataSource를 통해 Connection 얻어오기
			 conn = ds.getConnection();
			//5.출력확인 
			System.out.println("DBCP 연동성공");
		}
		catch(Exception e) {e.printStackTrace();}
		return conn;
		
	}

}
