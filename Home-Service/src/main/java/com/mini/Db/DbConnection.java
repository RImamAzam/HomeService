package com.mini.Db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	static Connection con;
	public static Connection getconnection() throws ClassNotFoundException, SQLException 
	{
 		
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root","India@123");
	
		return con;
	}
	
}