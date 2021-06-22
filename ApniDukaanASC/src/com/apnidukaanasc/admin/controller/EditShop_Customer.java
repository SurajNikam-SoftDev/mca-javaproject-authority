package com.apnidukaanasc.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apnidukaanasc.bean.UserBean;
import com.apnidukaanasc.dao.UserDao;

/**
 * Servlet implementation class EditShop_Customer
 */
@WebServlet("/EditShop_Customer")
public class EditShop_Customer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditShop_Customer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("Admin/editshopcustomer.jsp").forward(request, response); 
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
		 
		String shopname = request.getParameter("shopname") != null || request.getParameter("shopname") != ""
				? request.getParameter("shopname")
				: "undefined";
				shopname = shopname.isEmpty() ? "undefined" : shopname;

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
				
		String status = request.getParameter("status") != null || request.getParameter("status") != ""
				? request.getParameter("status")
				: "undefined";
				status = status.isEmpty() ? "undefined" : status;
				
				
		System.out.println(key + " :: " + shopname + " :: "  + ownername + " :: " + contactno + " :: " + prepaiddiscount + " :: " + emailid + " :: " + status);
		
		UserBean ub = new UserBean();
		ub.setId(Integer.parseInt(key));
		ub.setShopname(shopname);
		ub.setName(ownername);
		ub.setContact(contactno);
		ub.setPrepaiddiscount(prepaiddiscount);
		ub.setEmailid(emailid);
		ub.setStatus(status.equals("Active")?"1":"0");
		
		int result = UserDao.getShopDetailById(ub);
		
		if (result == 1) {
			response.sendRedirect("./EditShop_Customer?key="+key);
		} else {
			response.sendRedirect("./EditShop_Customer?key="+key);
		}
		
	}

}
