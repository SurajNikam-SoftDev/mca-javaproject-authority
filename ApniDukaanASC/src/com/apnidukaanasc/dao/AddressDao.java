package com.apnidukaanasc.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.apnidukaanasc.bean.AddressBean;
import com.apnidukaanasc.dbconnection.DBConnection;


public class AddressDao {
	public static int save(AddressBean ab)
	{
		int status = 0;
		try{
//			 
			 Connection con = DBConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("insert into address(mobileno, housebuilding, roadarea, city, state, lankmark, pincode, userid) values(?,?,?,?,?,?,?,?)");
			 ps.setString(1, ab.getMobilenumber());
			 ps.setString(2, ab.getHousenobuildingname());
			 ps.setString(3, ab.getRoadnameareacolony());
			 ps.setString(4, ab.getCity());
			 ps.setString(5, ab.getState());
			 ps.setString(6, ab.getLandmark());
			 ps.setString(7, ab.getPincode());
			 ps.setString(8, ab.getUserid());
			 
			 status = ps.executeUpdate();
			 
			 ps.close();
			 con.close();
		 }
		 catch (Exception e) {
			 e.printStackTrace();
		}
		
		return status;
	}
	
	public static List<AddressBean> getAllAddressById(String userid)
	{
		List<AddressBean> lab = new ArrayList<AddressBean>();
		
		try {
			Connection con = DBConnection.getConnection();
			
			PreparedStatement ps= con.prepareStatement("select * from address where userid = ?");
			ps.setString(1, userid);
			
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				AddressBean ab= new AddressBean();
				ab.setAid(rs.getString("aid"));
				ab.setMobilenumber(rs.getString("mobileno")); 
				ab.setHousenobuildingname(rs.getString("housebuilding"));  
		        ab.setRoadnameareacolony(rs.getString("roadarea"));
		        ab.setCity(rs.getString("city"));
		        ab.setState(rs.getString("state"));
		        ab.setLandmark(rs.getString("lankmark"));
		        ab.setPincode(rs.getString("pincode"));
		        
		        
				lab.add(ab); 
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lab;
	}
	
	public static String getSenderAddressContactById(String senderuserid)
	{
		String address = null;
		
		try {
			Connection con = DBConnection.getConnection();
			
			PreparedStatement ps= con.prepareStatement("select * from address where userid = ?");
			ps.setString(1, senderuserid);
			
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				address = rs.getString("mobileno")+", "+rs.getString("housebuilding")+", "+rs.getString("roadarea")+", "+rs.getString("city")+", "+rs.getString("state")+", "+rs.getString("lankmark")+", "+rs.getString("pincode");
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return address;
	}
	
	public static AddressBean getReceipantAddressContactById(String receipantuserid)
	{
		AddressBean ab = new AddressBean();
		
		try {
			Connection con = DBConnection.getConnection();
			
			PreparedStatement ps= con.prepareStatement("select * from address where userid = ?");
			ps.setString(1, receipantuserid);
			
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				
				ab.setMobilenumber(rs.getString("mobileno")); 
				ab.setHousenobuildingname(rs.getString("housebuilding"));  
		        ab.setRoadnameareacolony(rs.getString("roadarea"));
		        ab.setCity(rs.getString("city"));
		        ab.setState(rs.getString("state"));
		        ab.setLandmark(rs.getString("lankmark"));
		        ab.setPincode(rs.getString("pincode"));
		        
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return ab;
	}
	
	public static AddressBean getSingleRecords(String userid)
	{
		AddressBean ab= new AddressBean();
		
		try {
			Connection con = DBConnection.getConnection();
			
			PreparedStatement ps= con.prepareStatement("select * from address where userid = ?");
			ps.setString(1, userid);
			
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				
				ab.setAid(rs.getString("aid"));
				ab.setMobilenumber(rs.getString("mobileno")); 
				ab.setHousenobuildingname(rs.getString("housebuilding"));  
		        ab.setRoadnameareacolony(rs.getString("roadarea"));
		        ab.setCity(rs.getString("city"));
		        ab.setState(rs.getString("state"));
		        ab.setLandmark(rs.getString("lankmark"));
		        ab.setPincode(rs.getString("pincode"));
		        
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return ab;
	}
	
	public static int update(AddressBean ab)
	{
		 int status=0;  
		 
		 try{

			 Connection con = DBConnection.getConnection();//mobileno, housebuilding, roadarea, city, state, lankmark, pincode, userid
			 PreparedStatement ps = con.prepareStatement("update address set mobileno = ?, housebuilding = ?, roadarea = ?, city = ?, state = ?, lankmark = ?, pincode = ?  where userid = ? AND aid = ?");
			 ps.setString(1, ab.getMobilenumber());
			 ps.setString(2, ab.getHousenobuildingname());
			 ps.setString(3, ab.getRoadnameareacolony());
			 ps.setString(4, ab.getCity());
			 ps.setString(5, ab.getState());
			 ps.setString(6, ab.getLandmark());
			 ps.setString(7, ab.getPincode());
			 ps.setString(8, ab.getUserid());
			 ps.setString(9, ab.getAid());
			 
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
	
	public static int delete(String id)
	{
		 int status=0;  
		
		 try{
			 
			 Connection con = DBConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("delete from address where aid = ?");
			 ps.setString(1, id);
			 
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
