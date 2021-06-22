package com.apnidukaanasc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.apnidukaanasc.admin.bean.StaffBean;
import com.apnidukaanasc.dbconnection.DBConnection;
import com.apnidukaanasc.features.AES256;



public class StaffDao {
	
	public static StaffBean getStaffAccountByEmailId(String emailid)
	{
		StaffBean bsb= new StaffBean();
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select name, password from authorityuser where email = ?  AND type = 2");
			ps.setString(1, emailid);
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 bsb.setName(rs.getString("name"));
				 bsb.setPassword(AES256.decrypt(rs.getString("password")));
				 
//				 System.out.println(rs.getString("cuid") +" :: "+rs.getString("name") + " :: " + AES256.decrypt(rs.getString("password")));
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return bsb;
	}
	
	public static StaffBean getAdminAccountByEmailId(String emailid)
	{
		StaffBean bsb= new StaffBean();
		try {
			Connection con = DBConnection.getConnection();	
			PreparedStatement ps= con.prepareStatement("select name, password from authorityuser where email = ?  AND type = 1");
			ps.setString(1, emailid);
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 bsb.setName(rs.getString("name"));
				 bsb.setPassword(AES256.decrypt(rs.getString("password")));
				 
				 System.out.println(rs.getString("name") + " :: " + AES256.decrypt(rs.getString("password")));
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return bsb;
	}
	
	public static int update(String name, String password, String emailid)
	{
		 int status=0;  
		 
		 try{
			 Connection con = DBConnection.getConnection();
			 
			 PreparedStatement ps = con.prepareStatement("update authorityuser set name = ?, password = ? where email = ?");
			 
			 ps.setString(1, name);
			 ps.setString(2, AES256.encrypt(password));
			 ps.setString(3, emailid);
			 
			 status = ps.executeUpdate();
			 // System.out.println(status);
			 ps.close();
			 con.close(); 
		 }
		 catch (Exception e) {
			 e.printStackTrace();
		}
		 return status;
	} 

}
