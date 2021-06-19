<%@page import="com.apnidukaanasc.dao.UserDao"%>
<%@page import="com.apnidukaanasc.dao.ProductDao"%>
<%@page import="com.apnidukaanasc.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%
	String productcategory = request.getParameter("productcategory");
	String datefrom = request.getParameter("datefrom");
	String dateto = request.getParameter("dateto");
	
	List<ProductBean> list = ProductDao.getAllProductsByCategory(productcategory, datefrom, dateto);
	
	int i = 1;
%>
		<table class="table table-striped table-bordered myDataTable" style = "width: 100%;">
            <thead>
                <tr>
                    <th class = "search-col">#</th>
                    <th class = "search-col">Product Name</th>
                    <th class = "search-col">Shop Name</th>
                    <th class = "search-col">Price</th>
                    <th class = "search-col">Category</th>
                    <th class = "search-col">DateTime</th>
                    <th class = "search-col" >Action</th>
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
                    <td><%= product.getProductprice() %></td>
                    <td><%= product.getCategory() %></td>
                    <td><%= product.getDate_creation() %></td>
                    <td class = "text-center">
                    	<a href="javascript:void(0)" class = "btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product Details" onclick="location.href='SP_ViewNewAddedProduct?key=<%= product.getPid() %>'" style = "padding:0px;text-decoration: none;"><i class="material-icons p-1" style = "font-size:20px;color:white;">visibility</i></a>
	                    <a href="javascript:void(0)" class = "btn btn-success" data-toggle="tooltip" data-placement="top" title="Product Approved" onclick="location.href='SP_NewAddedProductApproved?key=<%= product.getPid() %>'" style = "padding:0px;text-decoration: none;"><i class="material-icons p-1" style = "font-size:20px;color:white;">done</i></a>
	                    <a href="javascript:void(0)" class = "btn btn-danger" data-toggle="tooltip" data-placement="top" title="Product Decline" onclick="location.href='SP_NewAddedProductDecline?key=<%= product.getPid() %>'" style = "padding:0px;text-decoration: none;"><i class="material-icons p-1" style = "font-size:20px;color:white;">delete_forever</i></a>
                    </td>
                </tr>
<%
	}
%>              
            </tbody>
            <tfoot>
                <tr>
                    <th class = "search-col">#</th>
                    <th class = "search-col">Product Name</th>
                    <th class = "search-col">Shop Name</th>
                    <th class = "search-col">Price</th>
                    <th class = "search-col">Category</th>
                    <th class = "search-col">DateTime</th>
                    <th class = "search-col" >Action</th>
                </tr>
            </tfoot>
        </table>
