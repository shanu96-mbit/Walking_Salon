package com.walkingsalon.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.walkingsalon.Util.ConnectionUtil;

public class LoginDAO {
	static Connection conn = ConnectionUtil.getConnection();
	public static boolean LoginUser(String uname, String password)throws Exception{	
	boolean status=false;  
	try{        
	PreparedStatement stmt = null;  
	String query;
 	query = "SELECT * from sys_user WHERE user_name=? and password=?";
 	stmt = conn.prepareStatement(query);
 	stmt.setString(1,uname);  
 	stmt.setString(2,password);  
	      
 	ResultSet result= stmt.executeQuery();  
	status=result.next();  
	          
	}catch(Exception e){System.out.println(e);}  
	return status;  
	}  
	}  	

