package com.apnidukaanasc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apnidukaanasc.dao.ProductDao;

/**
 * Servlet implementation class SP_DeleteProduct
 */
@WebServlet("/SP_DeleteProduct")
public class SP_DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SP_DeleteProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String key = request.getParameter("key") != null || request.getParameter("key") != ""
				? request.getParameter("key")
				: "undefined";
		key = key.isEmpty() ? "undefined" : key;

		int status = ProductDao.getProductDeclineById(key);

		if (status == 1) {
			response.sendRedirect("./SP_NewProductList");
		} else {
			response.sendRedirect("./SP_NewProductList");
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
