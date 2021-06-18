package com.apnidukaanasc.dao;

import java.sql.Connection;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.apnidukaanasc.bean.PlaceOrderBean;
import com.apnidukaanasc.bean.PurchaseOrderBean;
import com.apnidukaanasc.dbconnection.DBConnection;


public class PlaceOrderDao {
	
	
	public static List<PurchaseOrderBean> getPurchaseOrderRecordById(String userid)
	{
		List<PurchaseOrderBean> lpob=new ArrayList<PurchaseOrderBean>(); 
		
		try {
			Connection con = DBConnection.getConnection();
			
			System.out.println("select parcelid, pid, price, paymenttype, opstatus from orderparcel where receipantid = '"+ userid +"'");
			PreparedStatement ps= con.prepareStatement("select parcelid, pid, price, paymenttype, opstatus from orderparcel where receipantid = ?");
			ps.setString(1, userid);
			
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next()) 
			{
/*				System.out.println(rs.getString("parcelid"));
				System.out.println(rs.getString("pid"));
				System.out.println(rs.getString("price"));
				System.out.println(rs.getString("paymenttype"));
				System.out.println(rs.getString("opstatus"));
*/				
				PreparedStatement ps2= con.prepareStatement("select productname, productsubtitle, prodimg1 from products where pid = ?");
				ps2.setString(1, rs.getString("pid"));
				
				ResultSet rs2 = ps2.executeQuery(); 
				
				if(rs2.next())
				{
					PurchaseOrderBean pob = new PurchaseOrderBean();
					
/*					System.out.println(rs2.getString("productsubtitle").equals("undefined")?rs2.getString("productname"):rs2.getString("productname") +" - "+rs2.getString("productsubtitle"));
					System.out.println(rs2.getString("prodimg1"));
					*/
					pob.setParcelid(rs.getString("parcelid"));
					pob.setPid(rs.getString("pid"));
					pob.setPrice(rs.getString("price"));
					pob.setPaymenttype(rs.getString("paymenttype"));
					pob.setOpstatus(rs.getString("opstatus"));
					pob.setProducttitle(rs2.getString("productsubtitle").equals("undefined")?rs2.getString("productname"):rs2.getString("productname") +" - "+rs2.getString("productsubtitle"));
					pob.setProdimg1(rs2.getString("prodimg1"));
					
					lpob.add(pob);
				}
				
				
				//purchaseorder.add(""); 
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lpob;
	}
	
	public static String getShopNameByOrderId(String orderid)
	{
		String shopname = null;
		
		try {
			Connection con = DBConnection.getConnection();
			
			PreparedStatement ps= con.prepareStatement("select sendername from orderparcel where parcelid = ?");
			ps.setString(1, orderid); 
			   
			ResultSet rs = ps.executeQuery(); 
			 
			if(rs.next())
			{
				shopname = rs.getString("sendername");
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return shopname;
	}
	
	public static PurchaseOrderBean getPurchaseOrderRecordByReceipantIdAndPid(String userid, String pid)
	{
		PurchaseOrderBean pob = new PurchaseOrderBean();
		
		try {
			Connection con = DBConnection.getConnection();
			
//			System.out.println("select parcelid, pid, price, paymenttype, opstatus from orderparcel where senderid = '"+userid+"' AND pid = '"+pid+"'");
			PreparedStatement ps= con.prepareStatement("select parcelid, pid, referenceno, price, paymenttype, opstatus from orderparcel where receipantid = ? AND parcelid = ?");
			ps.setString(1, userid); 
			ps.setString(2, pid);
			   
			ResultSet rs = ps.executeQuery(); 
			 
			if(rs.next())
			{
				System.out.println(rs.getString("referenceno"));
/*				System.out.println(rs.getString("pid"));
				System.out.println(rs.getString("price"));
				System.out.println(rs.getString("paymenttype"));
				System.out.println(rs.getString("opstatus"));*/
				
				PreparedStatement ps2= con.prepareStatement("select productname, productsubtitle, prodimg1 from products where pid = ?");
				ps2.setString(1, rs.getString("pid"));
				
				ResultSet rs2 = ps2.executeQuery(); 
				
				if(rs2.next())
				{
/*					System.out.println(rs2.getString("productsubtitle").equals("undefined")?rs2.getString("productname"):rs2.getString("productname") +" - "+rs2.getString("productsubtitle"));
					System.out.println(rs2.getString("prodimg1"));
					*/
					pob.setReferenceno(rs.getString("referenceno"));
					pob.setParcelid(rs.getString("parcelid"));
					pob.setPid(rs.getString("pid"));
					pob.setPrice(rs.getString("price"));
					pob.setPaymenttype(rs.getString("paymenttype"));
					pob.setOpstatus(rs.getString("opstatus"));
					pob.setProducttitle(rs2.getString("productsubtitle").equals("undefined")?rs2.getString("productname"):rs2.getString("productname") +" - "+rs2.getString("productsubtitle"));
					pob.setProdimg1(rs2.getString("prodimg1"));
	
				}
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return pob;
	}
	
	public static PlaceOrderBean getOrderDetailByUserIdAndOrderId(String referenceno, String orderid)
	{
		PlaceOrderBean pob = new PlaceOrderBean(); 
		
		try {
			Connection con = DBConnection.getConnection();
			
//			System.out.println("select receipantname, receipantaddress, receipantcontact from orderparcel where referenceno = '"+referenceno+"' AND pid = '"+pid+"'");
			PreparedStatement ps= con.prepareStatement("select receipantname, receipantaddress, receipantcontact from orderparcel where referenceno = ? AND parcelid = ?");
			ps.setString(1, referenceno); 
			ps.setString(2, orderid);
			   
			ResultSet rs = ps.executeQuery(); 
			 
			if(rs.next())
			{
				pob.setReceipantname(rs.getString("receipantname"));
				pob.setReceipantaddress(rs.getString("receipantaddress"));
				pob.setReceipantcontact(rs.getString("receipantcontact"));
			}
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return pob;
	}
	
}
