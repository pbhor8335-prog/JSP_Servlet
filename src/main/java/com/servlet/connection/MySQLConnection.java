package com.servlet.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnection {
	
	private static final String url="jdbc:mysql://localhost:3306/jsp_servlet";
	
	private static final String username="root";
	
	private static final String password="root";
	
	public static Connection createConnection()
	{
		Connection con=null;
		
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		 con = DriverManager.getConnection(url, username, password);
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		
		return con;
		
	}
		

}
