package com.apnidukaanasc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.apnidukaanasc.bean.PaymentBean;
import com.apnidukaanasc.dbconnection.DBConnection;


public class PaymentDao {
	public static List<PaymentBean> getAllPayments(String userid)
	{
		List<PaymentBean> lpb = new ArrayList<PaymentBean>();
		
		try {
			Connection con = DBConnection.getConnection();
	 			
			PreparedStatement ps= con.prepareStatement("select referenceno, paymenttype, paymentstatus, pid from orderparcel where senderid = ? ORDER BY date_created DESC");
			ps.setString(1, userid);
			ResultSet rs = ps.executeQuery();  
			 
			while(rs.next()) 
			{
				PaymentBean pb = new PaymentBean();
				pb.setOrderid(rs.getString("referenceno"));  
				pb.setPaymentstatus(rs.getString("paymentstatus"));  
				pb.setPaymenttype(rs.getString("paymenttype"));
		        pb.setProdimg1(ProductDao.getProductImageById(rs.getString("pid")));
		        
		        lpb.add(pb);
			} 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lpb;
	}
}
