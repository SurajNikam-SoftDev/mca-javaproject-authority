package com.apnidukaanasc.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apnidukaanasc.admin.dao.StaffDao;

/**
 * Servlet implementation class DeleteStaff
 */
@WebServlet("/DeleteStaff")
public class DeleteStaff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteStaff() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String key = request.getParameter("key")!=null || request.getParameter("key")!="" ? request.getParameter("key") : "undefined" ;
		key = key.isEmpty()?"undefined":key;
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		System.out.println(key);
		
		int status = StaffDao.delete(Integer.parseInt(key));

		if (status == 1) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Data Is Deleted');");
			out.println("</script>");
			response.sendRedirect("./StaffList");
		} else { 
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Data Is Not Deleted');");
			out.println("</script>");
			response.sendRedirect("./StaffList");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
