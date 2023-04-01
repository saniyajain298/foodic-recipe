package com.Foodic.post;

import java.sql.*;

public class Dbcon {
	public Connection connection() {
		String url = "jdbc:mysql://localhost:3306/jdbc_curd";
		String uname = "root";
		String pass ="";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, uname, pass);
			
			return con;
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return null;
	}

}
