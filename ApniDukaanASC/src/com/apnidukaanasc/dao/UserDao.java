package com.apnidukaanasc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.apnidukaanasc.bean.UserBean;
import com.apnidukaanasc.dbconnection.DBConnection;



public class UserDao {
	@SuppressWarnings("unused")
	private static String QUERY = null;
	public static List<UserBean> getAllUserRecords(String searchby, String searchhere)
	{
		/*
		 * <option>Owner Name</option>
		                    <option>Shop Name</option>
		                    <option>Email ID</option>
		                    <option>Mobile No</option>
		 * 
		 * 
		 */
		switch(searchby)
		{
			case "All" : 
								QUERY = "select userid, username, shopname, emailid, contact, date_created from user";
								break;
			case "Owner Name" : 
								QUERY = "select userid, username, shopname, emailid, contact, date_created from user"
										+" where username LIKE '%"+searchhere+"%'";
								break;
								
			case "Shop Name" : 	QUERY = "select userid, username, shopname, emailid, contact, date_created from user"
								+" where shopname LIKE '%"+searchhere+"%'";
								break;
								
			case "Email ID" : 	QUERY = "select userid, username, shopname, emailid, contact, date_created from user"
								+" where emailid LIKE '%"+searchhere+"%'";
								break;
								
			case "Mobile No" : 	QUERY = "select userid, username, shopname, emailid, contact, date_created from user"
								+" where contact LIKE '%"+searchhere+"%'";
								break;
								
			default: break;
		}
		
		
		List<UserBean> lub= new ArrayList<UserBean>();
		try {
			
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
			
			Connection con = DBConnection.getConnection();	 
//			System.out.println(QUERY);
			PreparedStatement ps= con.prepareStatement(QUERY);
 
			ResultSet rs = ps.executeQuery();  
			 
			while(rs.next())
			{
				UserBean ub= new UserBean();
				ub.setId(rs.getInt("userid"));
				ub.setName(rs.getString("username"));
				ub.setShopname(rs.getString("shopname"));
				ub.setEmailid(rs.getString("emailid"));
		        ub.setContact(rs.getString("contact"));
		        ub.setDate_created(formatter.format(rs.getDate("date_created")));
		        
		        lub.add(ub);
			}
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return lub;
	}
	
	public static UserBean getAllRecordsById(String id)
	{

		UserBean ub= new UserBean();
		try {
			Connection con = DBConnection.getConnection();
//	 			
			PreparedStatement ps= con.prepareStatement("select username, shopname, shopphoto, contact, prepaiddiscount, status, emailid from user where userid = ?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				ub.setName(rs.getString("username"));
				ub.setShopname(rs.getString("shopname"));  
				ub.setShopphoto(rs.getString("shopphoto"));
				ub.setContact(rs.getString("contact"));
				ub.setPrepaiddiscount(rs.getString("prepaiddiscount")); 
				ub.setStatus(rs.getString("status"));
				ub.setEmailid(rs.getString("emailid"));
			}  
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return ub;
	}
	
	public static String getNameById(String id)
	{
//		System.out.println("emailid ::"+emailid);
		String userid = null;
		try {
			Connection con = DBConnection.getConnection();

			PreparedStatement ps= con.prepareStatement("select username from user where userid = ? AND status = 1");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery(); 
			 
			if(rs.next())
			{
				userid = rs.getString("username");
//				System.out.println("user id :: "+userid);
			} 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return userid;
	}
	
	public static String getShopNamelById(String userid)
	{
		
		String shopname = null;
		try {
			Connection con = DBConnection.getConnection();
 			
			PreparedStatement ps= con.prepareStatement("select username, shopname  from user where userid = ? AND status = 1");
			ps.setString(1, userid);
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				
				 shopname = rs.getString("shopname").equals("undefined")?rs.getString("username"):rs.getString("username")+" - "+rs.getString("shopname");
				   
				 
//				 System.out.println("Name ::" +  rs.getString("username") +" Shop Name :: "+ rs.getString("shopname"));
			} 
			  
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return shopname;
	}
	
	
	public static UserBean getShopDetailById(String userid)
	{
		
		UserBean ub= new UserBean();
		try {
			Connection con = DBConnection.getConnection();
 			
			PreparedStatement ps= con.prepareStatement("select username, shopname  from user where userid = ? AND status = 1");
			ps.setString(1, userid);
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				
				 ub.setName(rs.getString("username"));
				 ub.setShopname(rs.getString("shopname"));  
				 
//				 System.out.println("Name ::" +  rs.getString("username") +" Shop Name :: "+ rs.getString("shopname"));
			} 
			  
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return ub;
	}
	
	public static int getShopDetailById(UserBean ub)
	{
		
		int status = 0;
		try {
			Connection con = DBConnection.getConnection();
			
			PreparedStatement ps= con.prepareStatement("update user set username = ?, shopname = ?, emailid = ?, contact = ?, prepaiddiscount = ?, status = ? where userid = ?");
			ps.setString(1, ub.getName().toUpperCase());
			ps.setString(2, ub.getShopname());
			ps.setString(3, ub.getEmailid()); 
			ps.setString(4, ub.getContact());
			ps.setString(5, ub.getPrepaiddiscount());
			ps.setString(6, ub.getStatus());
			ps.setInt(7, ub.getId());
			
			status = ps.executeUpdate();
			  
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return status;
	}

}
