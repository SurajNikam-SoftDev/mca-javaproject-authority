package com.apnidukaanasc.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apnidukaanasc.admin.bean.StaffBean;
import com.apnidukaanasc.admin.dao.StaffDao;



/**
 * Servlet implementation class AddNewStaff
 */
@WebServlet("/AddNewStaff")
public class AddNewStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewStaff() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("Admin/addnewstaff.jsp").forward(request, response); 
	} 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
//		System.out.println("Welcome");
		
		String firstname = request.getParameter("firstname")!=null || request.getParameter("firstname")!="" ? request.getParameter("firstname") : "undefined" ;
		firstname = firstname.isEmpty()?"undefined":firstname;
		
		String middlename = request.getParameter("middlename")!=null || request.getParameter("middlename")!="" ? request.getParameter("middlename") : "undefined" ;
		middlename = middlename.isEmpty()?"undefined":middlename;
		
		String lastname = request.getParameter("lastname")!=null || request.getParameter("lastname")!="" ? request.getParameter("lastname") : "undefined" ;
		lastname = lastname.isEmpty()?"undefined":lastname;
		
		String category = request.getParameter("category")!=null || request.getParameter("category")!="" ? request.getParameter("category") : "undefined" ;
		category = category.isEmpty()?"undefined":category;
		
		String email = request.getParameter("email")!=null || request.getParameter("email")!="" ? request.getParameter("email") : "undefined" ;
		email = email.isEmpty()?"undefined":email;
		
		String password = request.getParameter("password")!=null || request.getParameter("password")!="" ? request.getParameter("password") : "undefined" ;
		password = password.isEmpty()?"undefined":password;
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
//		`authorityuser``auid``name``email``password``type``position``date_created``status`		
		
		StaffBean sb = new StaffBean();
		sb.setName(firstname +" "+ middlename +" "+ lastname);
		sb.setEmail(email);
		sb.setPassword(password);
		sb.setPosition(category);
		
		
		int status = StaffDao.save(sb);

		if (status == 1) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Data Is Inserted');");
			out.println("</script>");
			response.sendRedirect("./StaffList");
		} else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Data Is Not Inserted');");
			out.println("</script>");
			response.sendRedirect("./AddNewStaff");
		}
	}

}
