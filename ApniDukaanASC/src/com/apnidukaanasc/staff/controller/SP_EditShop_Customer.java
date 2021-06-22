package com.apnidukaanasc.staff.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SP_EditShop_Customer
 */
@WebServlet("/SP_EditShop_Customer")
public class SP_EditShop_Customer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SP_EditShop_Customer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("Staff/editshopcustomer.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub 

		String key = request.getParameter("key") != null || request.getParameter("key") != ""
				? request.getParameter("key")
				: "undefined";
				key = key.isEmpty() ? "undefined" : key; 
			//	shopname ownername contactno prepaiddiscount emailid	
		
		String ownername = request.getParameter("ownername") != null || request.getParameter("ownername") != ""
				? request.getParameter("ownername")
				: "undefined";
				ownername = ownername.isEmpty() ? "undefined" : ownername;

		String contactno = request.getParameter("contactno") != null || request.getParameter("contactno") != ""
				? request.getParameter("contactno")
				: "undefined";
				contactno = contactno.isEmpty() ? "undefined" : contactno;
				
		String prepaiddiscount = request.getParameter("prepaiddiscount") != null || request.getParameter("prepaiddiscount") != ""
				? request.getParameter("prepaiddiscount")
				: "undefined";
				prepaiddiscount = prepaiddiscount.isEmpty() ? "undefined" : prepaiddiscount;

		String emailid = request.getParameter("emailid") != null || request.getParameter("emailid") != ""
				? request.getParameter("emailid")
				: "undefined";
				emailid = emailid.isEmpty() ? "undefined" : emailid;
				
		System.out.println(key + " :: " + ownername + " :: " + contactno + " :: " + prepaiddiscount + " :: " + emailid);
		
	}

}
