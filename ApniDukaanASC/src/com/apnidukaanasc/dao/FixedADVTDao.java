package com.apnidukaanasc.dao;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.apnidukaanasc.bean.FixedADVTBean;
import com.apnidukaanasc.dbconnection.DBConnection;

public class FixedADVTDao {
	
	public static List<FixedADVTBean> getFixedADVT()
	{
		List<FixedADVTBean> lsab = new ArrayList<FixedADVTBean>();
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select faid, rank, photoimage from fixedadvt");
			
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				FixedADVTBean sab= new FixedADVTBean();
				sab.setFaid(rs.getString("faid"));
				sab.setRank(rs.getString("rank"));
				sab.setPhotoimage(rs.getString("photoimage"));    
				lsab.add(sab); 
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lsab;
	}
	
	public static int updateADVT(String rank, String fileName)
	{
		int status = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			
			System.out.println("update fixedadvt set photoimage = '"+fileName+"' where rank = '"+rank+"'");
			PreparedStatement ps= con.prepareStatement("update fixedadvt set photoimage	 = ? where rank = ?");
			ps.setString(1, fileName);
			ps.setString(2, rank);
			
			status = ps.executeUpdate();
			
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return status;
	}
	
	public static int deleteUploadingFiles(String uploadfile, String imgfilename)
	{
		int status = 0;
		
		File file = new File(uploadfile+File.separator+imgfilename);
		
		if (file.delete()) {
//			System.out.println(file.getName() + " file deleted.");
			status = 1;
		} else {
//			System.out.println("failed");
			status = 0;
		}
		
		
		return status;
	}
}
