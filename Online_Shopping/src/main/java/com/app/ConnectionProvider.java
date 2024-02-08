package com.app;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	
	public static Connection getCon() 
	{
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/online_shopping?autoReconnect=true&useSSL=false","root","boot");
			return con;
			
			
		} 
		catch (Exception e) 
		{
			System.out.println(e);
			return null;
		}
		
		
	}

}

