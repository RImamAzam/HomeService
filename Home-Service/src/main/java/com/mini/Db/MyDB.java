package com.mini.Db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class MyDB {
	
	static Connection con;

	public static boolean validateadmin(String name, String pass) {
		boolean status = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root",
					"India@123");
			
			con=DbConnection.getconnection();
			PreparedStatement ps = con.prepareStatement("select * from adminreg where email=? and password=?");
			ps.setString(1, name);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();
			status = rs.next();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static boolean validatecustomer(String name, String pass) {
		boolean status = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root",
					"India@123");

			con=DbConnection.getconnection();
			PreparedStatement ps = con.prepareStatement("select * from customerreg where email=? and pass=?");
			ps.setString(1, name);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();
			status = rs.next();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static boolean validatevendor(String name, String pass) {
		boolean status = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root",
					"root");
			
			con=DbConnection.getconnection();
			PreparedStatement ps = con.prepareStatement("select * from vendorreg where vendorid=? and password=?");
			ps.setString(1, name);
			ps.setString(2, pass);

			ResultSet rs = ps.executeQuery();
			status = rs.next();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
}
