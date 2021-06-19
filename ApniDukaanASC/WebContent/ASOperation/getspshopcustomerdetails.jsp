<%@page import="com.apnidukaanasc.bean.UserBean"%>
<%@page import="java.util.List"%>
<%@page import="com.apnidukaanasc.dao.UserDao"%>
<%
	String searchby = request.getParameter("searchby");
	String searchhere = request.getParameter("searchhere");
	
	List<UserBean> list = UserDao.getAllUserRecords(searchby, searchhere);
	int cnt = 1;
%>
		<table class="table table-striped table-bordered myDataTable" style = "width: 100%;">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Owner Name</th>
                    <th>Shop Name</th>
                    <th>Email Id</th>
                    <th>Contact No</th>
                    <th>Reg. Date</th> 
                    <th>Action</th>
                </tr>
            </thead>
            <tbody >
<%
	for(UserBean user: list)
	{
%>            
               <tr>
                    <td><%= cnt++ %></td>
                    <td><%= user.getName() %></td>
                    <td><%= user.getShopname() %></td>
                    <td><%= user.getEmailid() %></td>
                    <td><%= user.getContact() %></td>
                    <td><%= user.getDate_created() %></td>
                    <td class = "text-center">
                    	<a href="javascript:void(0)" onclick="location.href='SP_ViewShop_Customer?key=<%= user.getId() %>'" class = "" style = "text-decoration: none;" data-toggle="tooltip" data-placement="bottom" title="View" data-toggle="tooltip" data-placement="bottom" title="View"><i class="material-icons nav__icon">visibility</i></a>
                    	<a href="javascript:void(0)" onclick="location.href='SP_EditShop_Customer?key=<%= user.getId() %>'" class = "" style = "text-decoration: none;" data-toggle="tooltip" data-placement="bottom" title="Edit"><i class='bx bx-edit nav__icon ' ></i></a>
                    	
                    </td>
                </tr>
<%
	}
%>              
            </tbody>
            <tfoot>
                <tr>
                    <th>#</th>
                    <th>Owner Name</th>
                    <th>Shop Name</th>
                    <th>Email Id</th>
                    <th>Contact No</th>
                    <th>Reg. Date</th> 
                    <th>Action</th>
                </tr>
            </tfoot>
        </table>
