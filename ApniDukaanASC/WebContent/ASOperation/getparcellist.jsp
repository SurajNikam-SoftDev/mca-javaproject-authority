
<%@page import="com.apnidukaanasc.dao.ParcelDao"%>
<%@page import="com.apnidukaanasc.bean.ParcelBean"%>
<%@page import="java.util.List"%>
<%
	String status  = request.getParameter("status") != null || request.getParameter("status") != ""
			? request.getParameter("status")
			: "undefined";
	status = status.isEmpty() ? "undefined" : status;
	
	String datefrom  = request.getParameter("datefrom") != null || request.getParameter("datefrom") != ""
			? request.getParameter("datefrom")
			: "undefined";
	datefrom = datefrom.isEmpty() ? "undefined" : datefrom;

	String dateto  = request.getParameter("dateto") != null || request.getParameter("dateto") != ""
			? request.getParameter("dateto")
			: "undefined";
	dateto = dateto.isEmpty() ? "undefined" : dateto;
	
//	System.out.println("status :: " + status);

	List<ParcelBean> list = ParcelDao.getAllParcelListByStatus(status, datefrom, dateto);
	int i = 1;
%>
		<table class="table table-striped table-bordered myDataTable" style = "width: 100%;">
            <thead>
                <tr>
                    <th class = "search-col">#</th>
                    <th class = "search-col">Reference Number</th>
                    <th class = "search-col">Sender Name</th>
                    <th class = "search-col">Recipient Name</th>
                    <th class = "search-col">Status</th>
                    <th class = "search-col" >Action</th>
                </tr>
            </thead>
            <tbody> 
<%
	for(ParcelBean parcel: list)
	{
%>            
              	<tr>
                   	<td><%= i++ %></td>
                    <td><%= parcel.getReferenceno()%></td>
                    <td><%= parcel.getSendername()%></td>
                    <td><%= parcel.getReceipantname()%></td>
                    <td><%= parcel.getOpstatus()%></td>
                    <td class = "text-center">
                    	<a href="javascript:void(0)" class = "btn btn-success" data-toggle="tooltip" data-placement="top" title="View Parcel" onclick="location.href='ViewParcel?key=<%= parcel.getParcelid() %>'" style = "padding:0px;text-decoration: none;"><i class="material-icons p-1" style = "font-size:20px;color:white;">done</i></a>	
                    </td>
                </tr>
<%
	}
%>              
            </tbody>
            <tfoot>
                <tr>
                    <th class = "search-col">#</th>
                    <th class = "search-col">Reference Number</th>
                    <th class = "search-col">Sender Name</th>
                    <th class = "search-col">Recipient Name</th>
                    <th class = "search-col">Status</th>
                    <th class = "search-col" >Action</th>
                </tr>
            </tfoot>
        </table>
