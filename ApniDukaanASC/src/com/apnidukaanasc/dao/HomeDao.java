package com.apnidukaanasc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.apnidukaanasc.dbconnection.DBConnection;

public class HomeDao {
	
	public static int getTotalStaff()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(auid) from authorityuser where type = 2");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(auid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getShopCust()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(userid) from user where status = 1");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(userid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getTotalBranch()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(bid) from branches where type = 2");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(bid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getTotalBranchStaff()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(cuid) from courieruser where type = 2");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(cuid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getTotalProduct()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(pid) from products");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(pid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getTotalProductApproved()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(pid) from products where status = 1");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(pid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getTotalProductDecline()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(pid) from products where status = 0");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(pid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getTotalParcel()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(parcelid) from orderparcel");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(parcelid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getParcelDeclineBySeller()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(parcelid) from orderparcel where opstatus = 'Decline By Seller'");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(parcelid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getParcelPreApprovalFromCMS()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(parcelid) from orderparcel where opstatus = 'PreApproval From CMS'");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(parcelid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getParcelItemAcceptedBySeller()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(parcelid) from orderparcel where opstatus = 'Item Accepted By Seller'");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(parcelid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}

	public static int getParcelCollected()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(parcelid) from orderparcel where opstatus = 'Collected'");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(parcelid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getParcelShipped()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(parcelid) from orderparcel where opstatus = 'Shipped'");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(parcelid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getParcelInTransit()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(parcelid) from orderparcel where opstatus = 'In-Transit'");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(parcelid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getParcelArrivedByDestination()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(parcelid) from orderparcel where opstatus = 'Arrived By Destination'");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(parcelid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getParcelOutForDelivery()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(parcelid) from orderparcel where opstatus = 'Out For Delivery'");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(parcelid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getParcelReadyToPickUp()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(parcelid) from orderparcel where opstatus = 'Ready To PickUp'");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(parcelid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getParcelDelivery()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(parcelid) from orderparcel where opstatus = 'Delivery'");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(parcelid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getParcelPickUp()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(parcelid) from orderparcel where opstatus = 'PickUp'");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(parcelid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
	public static int getParcelUnsuccessfullyDelivery()
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select count(parcelid) from orderparcel where opstatus = 'Unsuccessfully Delivery Attempt'");
			
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 count = rs.getInt("count(parcelid)");
		    } 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return count;
	}
	
}
