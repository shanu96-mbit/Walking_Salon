package com.walkingsalon.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.walkingsalon.Util.ConnectionUtil;

public class RegistrationDAO {
	static Connection conn = ConnectionUtil.getConnection();
	public static boolean SaveCustomer(String fname,String lname,String address1,String address2,String address3,String city,int zipcode,String email,int tele, String username,String password1){

		try{
		PreparedStatement s = conn.prepareStatement("INSERT INTO sys_user(fname, lname, email, tel_number, user_name, password) VALUES (?, ?, ?, ?, ?, ?);",Statement.RETURN_GENERATED_KEYS);
		  s.setString(1,fname);
		  s.setString(2,lname);
		  s.setString(3,email);
		  s.setInt(4,tele);
		  s.setString(5,username);
		  s.setString(6,password1);
		  s.executeUpdate();
          System.out.println("Inserted into user");
          ResultSet rs = s.getGeneratedKeys();
          int key = 0 ;
      
          if (rs != null && rs.next()) {
              key = rs.getInt(1);
          }
          System.out.println("Auto Generated Primary Key" + key );
         
          
          PreparedStatement address = conn.prepareStatement("INSERT INTO address(address_line1, address_line2, address_line3, city, zip_code,user_id) VALUES (?, ?, ?, ?,?,?)");
          address.setString(1,address1);
          address.setString(2,address2);
          address.setString(3,address3);
          address.setString(4,city);
          address.setInt(5,zipcode);
          address.setInt(6,key);
          address.executeUpdate();
          address.close();
          s.close();
          System.out.println("Inserted into address");
		}catch(Exception e){
			System.out.println(e);
		}
		return true;
		}

}
