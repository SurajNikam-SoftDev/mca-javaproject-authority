<%@page import="com.apnidukaanasc.dao.UserDao"%>
<%@page import="com.apnidukaanasc.dao.ProductDao"%>
<%@page import="com.apnidukaanasc.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%
	String productcategory  = request.getParameter("productcategory") != null || request.getParameter("productcategory") != ""
			? request.getParameter("productcategory")
			: "undefined";
	productcategory = productcategory.isEmpty() ? "undefined" : productcategory;
	
	String dateFrom  = request.getParameter("dateFrom") != null || request.getParameter("dateFrom") != ""
			? request.getParameter("dateFrom")
			: "undefined";
	dateFrom = dateFrom.isEmpty() ? "undefined" : dateFrom;
	
	String dateTo  = request.getParameter("dateTo") != null || request.getParameter("dateTo") != ""
			? request.getParameter("dateTo")
			: "undefined";
	dateTo = dateTo.isEmpty() ? "undefined" : dateTo; 
	
	System.out.println(productcategory + " :: " +dateFrom + " :: " +dateTo);
	
	List<ProductBean> list = ProductDao.getAllProductReport(productcategory, dateFrom, dateTo);
	 
	int i = 1;
%>
		<div class = "text-right">
		<a href = "javascript:void(0)" class="btn btn-primary"  onclick="myApp.printTable()" style = "margin:5px 0px; border-radius:5px;"><i class="material-icons nav__icon " style ="color:white;font-size:large;margin:2px 0px 0px 0px;">description</i></a>
		</div>
		<table border = "1" class="table table-striped table-bordered myDataTable" id = "tab" style = "width: 100%;">
            <thead>
                <tr>
                    <th style = "width:20px;">#</th>
                    <th style = "width:400px;">Product Name</th>
                    <th style = "width:200px;">Shop Name</th>
                    <th style = "width:50px;">DateTime</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
<%
	for(ProductBean product: list)
	{
%>            
              	<tr>
                    <td><%= i++ %></td>
                    <td><%= product.getProductsubtitle().equals("undefined")?product.getProductname():product.getProductname()+" "+product.getProductsubtitle() %></td>
                    <td><%= UserDao.getShopNamelById(product.getUserid()) %></td>
                    <td><%= product.getDate_creation() %></td>
                    <td><%= product.getStatus() %></td>
                </tr>
<%
	}
%>              
            </tbody>
            <tfoot>
                <tr>
                    <th>#</th>
                    <th>Product Name</th>
                    <th>Shop Name</th>
                    <th>DateTime</th>
                    <th >Action</th>
                </tr>
            </tfoot>
        </table>
