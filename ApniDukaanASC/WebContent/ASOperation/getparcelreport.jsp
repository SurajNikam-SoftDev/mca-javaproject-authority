<%@page import="com.apnidukaanasc.dao.ParcelDao"%>
<%@page import="com.apnidukaanasc.bean.ParcelBean"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%

//	http://localhost:8081/ApnaCMS/GetReport?productcategory=Fashion&dateFrom=2021-06-01&dateTo=2021-06-18

	String productcategory  = request.getParameter("productcategory") != null || request.getParameter("productcategory") != ""
			? request.getParameter("productcategory")
			: "undefined";
	productcategory = productcategory.isEmpty() ? "undefined" : productcategory;
	
	String datefrom  = request.getParameter("datefrom") != null || request.getParameter("datefrom") != ""
			? request.getParameter("datefrom")
			: "undefined";
	datefrom = datefrom.isEmpty() ? "undefined" : datefrom;
	
	String dateto  = request.getParameter("dateto") != null || request.getParameter("dateto") != ""
			? request.getParameter("dateto")
			: "undefined";
	dateto = dateto.isEmpty() ? "undefined" : dateto;
 
//	System.out.println("productcategory :: " + productcategory + " :: " + dateFrom + " :: " + dateTo);

	List<ParcelBean> list = ParcelDao.getAllParcelReport(productcategory, datefrom, dateto);
	int i = 1;
	
	
%>		
		<div class = "text-right">
		<a href = "javascript:void(0)" class="btn btn-primary"  onclick="myApp.printTable()" style = "margin:5px 0px; border-radius:5px;"><i class="material-icons nav__icon " style ="color:white;font-size:large;margin:2px 0px 0px 0px;">description</i></a>
		</div>
		<table border = "1" class="table table-striped table-bordered myDataTable" id = "tab" style = "width: 100%;">
            <thead>
                <tr>
                    <th class = "search-col">#</th>
                    <th class = "search-col">Date</th>
                    <th class = "search-col">Sender Name</th>
                    <th class = "search-col">Recipient Name</th>
                    <th class = "search-col" >Action</th>
                </tr>
            </thead>
            <tbody > 
<%
	for(ParcelBean parcel: list)
	{
%>            
              	<tr>
                   	<td><%= i++ %></td>
                    <td><%= parcel.getDate_created() %></td>
                    <td><%= parcel.getSendername()%></td>
                    <td><%= parcel.getReceipantname()%></td>
                    <td><%= parcel.getOpstatus()%></td>
                </tr>
<%
	}
%>              
            </tbody>
            <tfoot>
                <tr>
                    <th class = "search-col">#</th>
                    <th class = "search-col">Date</th>
                    <th class = "search-col">Sender Name</th>
                    <th class = "search-col">Recipient Name</th>
                    <th class = "search-col" >Action</th>
                </tr>
            </tfoot>
        </table>