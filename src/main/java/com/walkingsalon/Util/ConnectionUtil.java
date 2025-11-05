package com.walkingsalon.Util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionUtil {
	
	public static Connection getConnection(){
	      Connection c = null;
	      try {
	         Class.forName("org.postgresql.Driver");
	         c = DriverManager
	            .getConnection("jdbc:postgresql://localhost:3306/walkingsalon",
	            "postgres", "1234");
	      } catch (Exception e) {
	         e.printStackTrace();
	         System.err.println(e.getClass().getName()+": "+e.getMessage());
	         System.exit(0);
	      }
	      System.out.println("Opened database successfully");
		return c;
	   }

}
