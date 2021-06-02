package com.apnidukaanasc.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.apnidukaanasc.admin.bean.StaffBean;
import com.apnidukaanasc.dbconnection.DBConnection;
import com.apnidukaanasc.features.AES256;

public class StaffDao {
	
	public static int save(StaffBean sb)
	{
		int status = 0;
		
		try{
			 Connection con = DBConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("insert into authorityuser(name, email, password, position) values(?,?,?,?)");
//			 System.out.println("insert into authorityuser(name, email, password, branch_id) values ('" + sb.getName()+ "','" + sb.getEmail() + "','" + AES256.encrypt(sb.getPassword()) + "','" + sb.getPosition() + "')");

			 ps.setString(1, sb.getName().toUpperCase());
			 ps.setString(2, sb.getEmail());
			 ps.setString(3, AES256.encrypt(sb.getPassword()));
			 ps.setString(4, sb.getPosition());
			 
			 status = ps.executeUpdate();
//			 System.out.println("StaffDao.save() Insert Successfully");
			 ps.close();
			 con.close();			 
		}
		 catch (Exception e) {
			 e.printStackTrace();
		}
		
		
		return status;
	} 
	
	public static List<StaffBean> getAllRecords()
	{
		List<StaffBean> lsb = new ArrayList<StaffBean>();
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select auid, name, email, position from authorityuser where type = 2");
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				 StaffBean sb= new StaffBean();
				 sb.setAuid(rs.getString("auid")); 
				 sb.setName(rs.getString("name"));  
		         sb.setEmail(rs.getString("email"));
		         sb.setPosition(rs.getString("position"));
		             
		         lsb.add(sb); 
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return lsb;
	}
	
	public static StaffBean getAllRecordsById(String id)
	{
		StaffBean bsb= new StaffBean();
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select * from authorityuser where auid = ?  AND type = 2");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 bsb.setAuid(rs.getString("auid"));
				 bsb.setName(rs.getString("name"));
				 bsb.setEmail(rs.getString("email"));
				 bsb.setPosition(rs.getString("position"));
				 bsb.setPassword(AES256.decrypt(rs.getString("password")));
				 
//				 System.out.println(rs.getString("cuid") +" :: "+rs.getString("name") +" :: "+rs.getString("email") +" :: "+rs.getString("branch_id") +" :: "+rs.getString("password"));
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return bsb;
	}
	
	public static int update(StaffBean sb)
	{
		 int status=0;  
		 
		 try{
			 Connection con = DBConnection.getConnection();
			 
			 PreparedStatement ps = con.prepareStatement("update authorityuser set name = ?, email = ?, password = ?, position = ?  where auid = ?");
//			 System.out.println("update authorityuser set name = '"+sb.getName()+"', email = '"+sb.getEmail()+"', password = '"+AES256.encrypt(sb.getPassword())+"', position = '"+sb.getBranch_id()+"'  where auid = '"+sb.getCuid()+"'");
			 ps.setString(1, sb.getName());
			 ps.setString(2, sb.getEmail());
			 ps.setString(3, AES256.encrypt(sb.getPassword()));
			 ps.setString(4, sb.getPosition());
			 ps.setString(5, sb.getAuid());
			 
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
	
	
	public static int delete(int id)
	{
		 int status=0;  
		
		 try{
			 
			 Connection con = DBConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("delete from authorityuser where auid = ?");
			 ps.setInt(1, id);
			 
			 status = ps.executeUpdate();
			 //System.out.println("delete Successfully");
			 ps.close();
			 con.close();
		 }
		 catch (Exception e) {
			 e.printStackTrace();
		}
		 return status;
	}

}
