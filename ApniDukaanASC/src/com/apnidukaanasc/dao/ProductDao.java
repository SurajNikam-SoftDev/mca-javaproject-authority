package com.apnidukaanasc.dao;


import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.apnidukaanasc.bean.ProductBean;
import com.apnidukaanasc.dbconnection.DBConnection;


public class ProductDao {
	
	@SuppressWarnings("unused")
	private static final String UPLOAD_DIRECTORY = "C:/xampp/htdocs/uploads";
	
	public static List<ProductBean> getAllRecordsProductsById(String userid)
	{
		List<ProductBean> lpb = new ArrayList<ProductBean>();
		
		try {
			Connection con = DBConnection.getConnection();
//			System.out.println("select pid, prodimg1, productname, productprice  from products where userid = '"+userid+"'");
			PreparedStatement ps= con.prepareStatement("select pid, prodimg1, productname, productprice, productsubtitle from products where userid = ? AND status = 0");
			ps.setString(1, userid);
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				 ProductBean pb= new ProductBean();
		         pb.setPid(rs.getInt("pid"));
		         pb.setProdimg1(rs.getString("prodimg1"));
		         pb.setProductname(rs.getString("productname"));
		         pb.setProductsubtitle(rs.getString("productsubtitle"));
		         pb.setProductprice(rs.getString("productprice"));
//		         System.out.println(rs.getInt("pid") + " :: " + rs.getString("prodimg1") + " :: " + rs.getString("productname") + " :: " + rs.getString("productprice"));
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
	
	public static ProductBean getProductDetailsById(String id)
	{
		ProductBean pb= new ProductBean();
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select productname, productsubtitle, productprice, category, cashondelivery, allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc, prodimg1, prodimg2, prodimg3, prodimg4, prodimg5, prodimg6, prodimg7, prodimg8, prodimg9, prodimg10, userid  from products where pid = ?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				/*
				 * productname, productsubtitle, productprice, category, cashondelivery,
				 * allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock,
				 * returnperiod, proddesc
				 */			 	
				pb.setProductname(rs.getString("productname"));
		        pb.setProductsubtitle(rs.getString("productsubtitle"));
		        pb.setProductprice(rs.getString("productprice"));
		        pb.setCategory(rs.getString("category"));
		        pb.setCashondelivery(rs.getString("cashondelivery"));
		        pb.setAllowreturn(rs.getString("allowreturn"));
		        pb.setHeight(rs.getString("prodheight"));
		        pb.setWeight(rs.getString("prodweight"));
		        pb.setWidth(rs.getString("prodwidth"));
		        pb.setLength(rs.getString("prodlenght"));
		        pb.setStock(rs.getString("stock"));
		        pb.setReturnperiod(rs.getString("returnperiod"));
		        pb.setDescription(rs.getString("proddesc"));
		        pb.setProdimg1(rs.getString("prodimg1"));
				pb.setProdimg2(rs.getString("prodimg2"));
				pb.setProdimg3(rs.getString("prodimg3"));
				pb.setProdimg4(rs.getString("prodimg4"));
				pb.setProdimg5(rs.getString("prodimg5"));
				pb.setProdimg6(rs.getString("prodimg6"));
				pb.setProdimg7(rs.getString("prodimg7"));
				pb.setProdimg8(rs.getString("prodimg8"));
				pb.setProdimg9(rs.getString("prodimg9"));
				pb.setProdimg10(rs.getString("prodimg10"));
				pb.setUserid(rs.getString("userid"));
				
	//			System.out.println("user Id :: "+rs.getString("userid"));
		         
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return pb;
	}
	
	public static String getProductImageById(String id)
	{
			String prodimg1 = null;
		
		try {
			Connection con = DBConnection.getConnection();
//	SELECT pid, productname, productsubtitle, productprice, category, cashondelivery, allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc FROM products;
			PreparedStatement ps= con.prepareStatement("select prodimg1 from products where pid = ?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				prodimg1 = rs.getString("prodimg1");
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return prodimg1;
	}
	
	public static List<ProductBean> getAllProductsByCategory(String productcategory, String datefrom, String dateto)
	{
		List<ProductBean> lpb = new ArrayList<ProductBean>();
		
		try {
			Connection con = DBConnection.getConnection();
//			System.out.println("select pid, prodimg1, productname, productprice  from products where userid = '"+userid+"'");
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
			String query = null;
			
			if(productcategory.equalsIgnoreCase("All") && datefrom.length() == 0 && dateto.length() == 0 )
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where status = '0' ORDER BY date_creation desc";
			}
			else if(productcategory.equalsIgnoreCase("All") && datefrom.length() != 0 && dateto.length() == 0)
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where status = '0' AND date_creation > '"+datefrom+"' ORDER BY date_creation desc";
			}
			else if(productcategory.equalsIgnoreCase("All") && datefrom.length() == 0 && dateto.length() != 0)
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where status = '0' AND date_creation < '"+dateto+"' ORDER BY date_creation desc";
			}
			else if(productcategory.equalsIgnoreCase("All") && datefrom.length() != 0 && dateto.length() != 0)
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where status = '0' AND date_creation BETWEEN '"+datefrom+"' AND '"+dateto+"' ORDER BY date_creation desc";
			}	
			else if(productcategory != "All" && datefrom.length() == 0 && dateto.length() == 0 )
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where status = '0' AND category = '"+productcategory+"' ORDER BY date_creation desc";
			}
			else if(productcategory != "All" && datefrom.length() != 0 && dateto.length() == 0)
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where status = '0' AND category = '"+productcategory+"' AND date_creation > '"+datefrom+"' ORDER BY date_creation desc";
			}	
			else if(productcategory != "All" && datefrom.length() == 0 && dateto.length() != 0)
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where status = '0' ANDcategory = '"+productcategory+"' AND date_creation < '"+dateto+"' ORDER BY date_creation desc";
			}
			else if(productcategory != "All" && datefrom.length() != 0 && dateto.length() != 0)
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where status = '0' AND category = '"+productcategory+"' AND date_creation BETWEEN '"+datefrom+"' AND '"+dateto+"' ORDER BY date_creation desc";
			}
			
			
			System.out.println(query);
			PreparedStatement ps= con.prepareStatement(query);
			
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				 ProductBean pb= new ProductBean();
				 pb.setPid(rs.getInt("pid"));
				 pb.setProductname(rs.getString("productname"));
		         pb.setProductsubtitle(rs.getString("productsubtitle"));
		         pb.setProductprice(rs.getString("productprice"));
		         pb.setCategory(rs.getString("category"));
		         pb.setDate_creation(formatter.format(rs.getDate("date_creation")));
				 pb.setUserid(rs.getString("userid"));
				 pb.setStatus(rs.getString("status").equals("1")?"Approved":rs.getString("status").equals("0")?"Pending":"Decline");
		         
//		         System.out.println(rs.getInt("pid") + " :: " + rs.getString("prodimg1") + " :: " + rs.getString("productname") + " :: " + rs.getString("productprice"));
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
	
	public static List<ProductBean> getAllProductReport(String productcategory, String datefrom, String dateto)
	{
		List<ProductBean> lpb = new ArrayList<ProductBean>();
		
		try {
			Connection con = DBConnection.getConnection();
//			System.out.println("select pid, prodimg1, productname, productprice  from products where userid = '"+userid+"'");
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
			String query = null;
			
			if(productcategory.equalsIgnoreCase("All") && datefrom.equals("undefined") && dateto.equals("undefined") )
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products ORDER BY date_creation desc";
			}
			else if(productcategory.equalsIgnoreCase("All") && !datefrom.equals("undefined") && dateto.equals("undefined"))
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where date_creation > '"+datefrom+"' ORDER BY date_creation desc";
			}
			else if(productcategory.equalsIgnoreCase("All") && datefrom.equals("undefined") && !dateto.equals("undefined"))
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where date_creation < '"+dateto+"' ORDER BY date_creation desc";
			}
			else if(productcategory.equalsIgnoreCase("All") && !datefrom.equals("undefined") && !dateto.equals("undefined"))
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where date_creation BETWEEN '"+datefrom+"' AND '"+dateto+"' ORDER BY date_creation desc";
			}
			else if(!productcategory.equalsIgnoreCase("All") && datefrom.equals("undefined") && dateto.equals("undefined") )
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where category = '"+productcategory+"' ORDER BY date_creation desc";
			}
			else if(!productcategory.equalsIgnoreCase("All") && !datefrom.equals("undefined") && dateto.equals("undefined"))
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where category = '"+productcategory+"' AND date_creation > '"+datefrom+"' ORDER BY date_creation desc";
			}
			else if(!productcategory.equalsIgnoreCase("All") && datefrom.equals("undefined") && !dateto.equals("undefined"))
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where category = '"+productcategory+"' AND date_creation < '"+dateto+"' ORDER BY date_creation desc";
			}
			else if(!productcategory.equalsIgnoreCase("All") && !datefrom.equals("undefined") && !dateto.equals("undefined"))
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid, status from products where category = '"+productcategory+"' AND date_creation BETWEEN '"+datefrom+"' AND '"+dateto+"' ORDER BY date_creation desc";
			}
			
			
			
			System.out.println(query);
			PreparedStatement ps= con.prepareStatement(query);
			
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				 ProductBean pb= new ProductBean();
				 pb.setPid(rs.getInt("pid"));
				 pb.setProductname(rs.getString("productname"));
		         pb.setProductsubtitle(rs.getString("productsubtitle"));
		         pb.setProductprice(rs.getString("productprice"));
		         pb.setCategory(rs.getString("category"));
		         pb.setDate_creation(formatter.format(rs.getDate("date_creation")));
				 pb.setUserid(rs.getString("userid"));
				 pb.setStatus(rs.getString("status").equals("1")?"Approved":rs.getString("status").equals("0")?"Pending":"Decline");
		         
//		         System.out.println(rs.getInt("pid") + " :: " + rs.getString("prodimg1") + " :: " + rs.getString("productname") + " :: " + rs.getString("productprice"));
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
	
	public static int getProductApprovedById(String id)
	{
			int status = 0;
		
		try {
			Connection con = DBConnection.getConnection(); 

			System.out.println("update products set status = 1 where pid = '"+id+"'");
			PreparedStatement ps= con.prepareStatement("update products set status = 1 where pid = ?");
			ps.setString(1, id);
			status = ps.executeUpdate();
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}
	
	public static int getProductDeclineById(String id)
	{
			int status = 0;
		
		try {
			Connection con = DBConnection.getConnection(); 

			System.out.println("update products set status = -1 where pid = '"+id+"'");
			PreparedStatement ps= con.prepareStatement("update products set status = -1 where pid = ?");
			ps.setString(1, id);
			status = ps.executeUpdate();
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}
	
	public static List<ProductBean> getAllProductsByCategoryAndName(String productcategory, String productname, String datefrom, String dateto)
	{
		List<ProductBean> lpb = new ArrayList<ProductBean>();
		
		try {
			Connection con = DBConnection.getConnection();
//			System.out.println("select pid, prodimg1, productname, productprice  from products where userid = '"+userid+"'");
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
			String query = null;
			
			if(productcategory.equalsIgnoreCase("All") && productname.length() != 0 && datefrom.length() == 0 && dateto.length() == 0 )
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid from products where status = 1 AND productname LIKE '%"+productname+"%' OR productsubtitle LIKE '%"+productname+"%' ORDER BY date_creation desc";
			}
			else if(productcategory.equalsIgnoreCase("All") && productname.length() != 0 && datefrom.length() != 0 && dateto.length() == 0)
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid from products where status = 1 AND productname LIKE '%"+productname+"%' OR productsubtitle LIKE '%"+productname+"%' AND date_creation > '"+datefrom+"' AND status = 0 ORDER BY date_creation desc";
			}
			else if(productcategory.equalsIgnoreCase("All") && productname.length() != 0 && datefrom.length() == 0 && dateto.length() != 0)
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid from products where status = 1 AND productname LIKE '%"+productname+"%' OR productsubtitle LIKE '%"+productname+"%' AND date_creation < '"+datefrom+"' AND status = 0 ORDER BY date_creation desc";
			}
			else if(productcategory.equalsIgnoreCase("All") && productname.length() != 0 && datefrom.length() != 0 && dateto.length() != 0)
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid from products where status = 1 AND productname LIKE '%\"+productname+\"%' OR productsubtitle LIKE '%"+productname+"%' AND date_creation BETWEEN '"+datefrom+"' AND '"+dateto+"' AND status = 0 ORDER BY date_creation desc";
			}	
			else if(productcategory != "All" && productname.length() != 0 && datefrom.length() == 0 && dateto.length() == 0 )
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid  from products where status = 1 AND productname LIKE '%"+productname+"%' OR productsubtitle LIKE '%"+productname+"%' AND category = '"+productcategory+"' AND status = 0 ORDER BY date_creation desc";
			}
			else if(productcategory != "All" && productname.length() != 0 && datefrom.length() != 0 && dateto.length() == 0)
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid from products where status = 1 AND productname LIKE '%"+productname+"%' OR productsubtitle LIKE '%"+productname+"%' AND category = '"+productcategory+"' AND date_creation > '"+datefrom+"' AND status = 0 ORDER BY date_creation desc";
			}
			else if(productcategory != "All" && productname.length() != 0 && datefrom.length() == 0 && dateto.length() != 0)
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid from products where status = 1 AND productname LIKE '%"+productname+"%' OR productsubtitle LIKE '%"+productname+"%' AND category = '"+productcategory+"' AND date_creation < '"+datefrom+"' AND status = 0 ORDER BY date_creation desc";
			}
			else if(productcategory != "All" && productname.length() != 0 && datefrom.length() != 0 && dateto.length() != 0)
			{
				query = "select pid, productname, productsubtitle, productprice, category, date_creation, userid from products where status = 1 AND productname LIKE '%"+productname+"%' OR productsubtitle LIKE '%"+productname+"%' AND category = '"+productcategory+"' AND date_creation BETWEEN '"+datefrom+"' AND '"+dateto+"' AND status = 0 ORDER BY date_creation desc";
			}
			
			
			System.out.println(query);
			PreparedStatement ps= con.prepareStatement(query);
			
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				 ProductBean pb= new ProductBean();
				 pb.setPid(rs.getInt("pid"));
				 pb.setProductname(rs.getString("productname"));
		         pb.setProductsubtitle(rs.getString("productsubtitle"));
		         pb.setProductprice(rs.getString("productprice"));
		         pb.setCategory(rs.getString("category"));
		         pb.setDate_creation(formatter.format(rs.getDate("date_creation")));
				 pb.setUserid(rs.getString("userid"));
		        
		         
//		         System.out.println(rs.getInt("pid") + " :: " + rs.getString("prodimg1") + " :: " + rs.getString("productname") + " :: " + rs.getString("productprice"));
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
