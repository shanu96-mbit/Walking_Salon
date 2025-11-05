package com.walkingsalon.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import org.json.JSONArray;


import com.walkingsalon.Util.ConnectionUtil;

public class HomeDashboardDAO{
	static Connection conn = ConnectionUtil.getConnection();
		public static JSONArray getpromotion() throws Exception{

			Statement stmt = null;
		    ResultSet result = null;
		  
		 	String query;
		 	stmt = conn.createStatement();
		 	query = "SELECT description FROM promotion WHERE promo_status = 'A'";
		 	result = stmt.executeQuery(query);
			JSONArray array = new JSONArray(); 
	 		while(result.next()) {
	            	 
	        JSONArray arr = new JSONArray();
	        //JSONObject o = new JSONObject();
	        	 
	        String description = result.getString("description");
	        
	        	
	        arr.put(description);
	  
	             array.put(arr);    
	         }
			
			stmt.close();
			return array;
		    

	}

}
