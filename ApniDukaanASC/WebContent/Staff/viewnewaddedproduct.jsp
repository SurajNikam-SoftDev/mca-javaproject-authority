<%@page import="com.apnidukaanasc.dao.UserDao"%>
<%@page import="com.apnidukaanasc.bean.UserBean"%>
<%@page import="com.apnidukaanasc.dao.ProductDao"%>
<%@page import="com.apnidukaanasc.bean.ProductBean"%>
<%@page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
   	<title>ApniDukaanASC :: View New Added Product</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
	<!--========== BOX ICONS ==========-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/viewproduct.css">
    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src = "./assets/js/staffsearch.js"></script>
</head>
<style>
[list]::-webkit-calendar-picker-indicator {
    display: none;
  }

datalist{
	max-height: 100px;
}
</style>
<body>
<%
	if(session.getAttribute("emailid")==null)
	{
		response.sendRedirect("./LogIn");
	}	

	String key = request.getParameter("key") != null || request.getParameter("key") != ""
	? request.getParameter("key")
	: "undefined";
	key = key.isEmpty() ? "undefined" : key; 
	
	InetAddress IP=InetAddress.getLocalHost();
	
	System.out.println("key :: "+key +", IP Address ::"+IP);
	
	ProductBean pb = ProductDao.getProductDetailsById(key);
%>
		<!--========== HEADER ==========-->
        <header class="header">
            <div class="header__container">
				
                <a href="StaffPanel" class="header__logo" style = "text-decoration:none;">ApniDukaanASC - Staff Panel |<small> Welcome, <%= session.getAttribute("emailid") %></small></a>
    
   				<div class="header__search">
                    <input list="browsers" name="browser" id="browser" placeholder="Search" class="header__input"><button type = "submit" onclick = "return search()" style = "border:none;outline:0px;background-color:lightgrey;border-radius:15%"><i class='bx bx-search header__icon'></i></button>
                    <datalist id="browsers" style = "height: 80vh;">
					  <option value="Home">
					  <option value="Shop & Customer Details">
					  <option value="New Product List">
					  <option value="Product Details">
					  <option value="Parcel List">
					  <option value="Item Accept By Courier">
					  <option value="Collected">
					  <option value="Shipped">
					  <option value="In-Transit">
					  <option value="Arrived At Destination">
					  <option value="Out For Delivery">
					  <option value="Ready To PickUp">
					  <option value="Delivery">
					  <option value="PickUp">
					  <option value="Unsuccessfully Delivery Attempt">
					  <option value="Track Order">
					  <option value="Product Report">
					  <option value="Parcel Report">
					  <option value="Manage Account">
					</datalist>
                </div>
    
                <div class="header__toggle">
                    <i class='bx bx-menu' id="header-toggle"></i>
                </div>
            </div>
        </header>

        <!--========== NAV ==========-->
        <div class="nav" id="navbar">
            <nav class="nav__container">
                <div>
                    <a href="StaffPanel" class="nav__link nav__logo" >
                        <i class='bx bx-mask nav__icon' ></i>
                        <span class="nav__logo-name">StaffPanel</span>
                    </a>
    				<div class="nav__list">
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Menu</h3> 
    						<a href="StaffPanel" class="nav__link active">
                                <i class='bx bx-home nav__icon' ></i>
                                <span class="nav__name">Home</span>
                            </a>
                            <a href="SP_Shop_Customer" class="nav__link">
                                <i class='bx bx-customize nav__icon' ></i>
                                <span class="nav__name">Shop & Customer Details</span>
                            </a>
                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">               
                                   	<i class='bx bx-outline nav__icon'></i>
                                    <span class="nav__name">Product</span>
                                    <i class='bx bx-chevron-down nav__icon nav__dropdown-icon'></i>
                                </a>
								<div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="SP_NewProductList" class="nav__dropdown-item">New Product List</a>
                                        <a href="SP_ProductDetails" class="nav__dropdown-item">Product Details</a>
                                    </div>
                                </div>
                            </div>
                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                    <i class='bx bx-box nav__icon' ></i>
                                    <span class="nav__name">Parcel</span>
                                    <i class='bx bx-chevron-down nav__icon nav__dropdown-icon'></i>
                                </a>
								<div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="SP_ParcelList" class="nav__dropdown-item">List All</a>
                                        <a href="SP_ItemAcceptByCourier" class="nav__dropdown-item">Item Accepted by courier</a>
                                        <a href="SP_Collected" class="nav__dropdown-item">Collected</a>
                                        <a href="SP_Shipped" class="nav__dropdown-item">Shipped</a>
                                        <a href="SP_InTransit" class="nav__dropdown-item">In-Transit</a>
                                        <a href="SP_ArrivedAtDestination" class="nav__dropdown-item">Arrived At Destination</a>
                                        <a href="SP_OutForDelivery" class="nav__dropdown-item">Out For Delivery</a>
                                        <a href="SP_ReadyToPickUp" class="nav__dropdown-item">Ready To PickUp</a>
                                        <a href="SP_Delivered" class="nav__dropdown-item">Delivered</a>
                                        <a href="SP_PickUp" class="nav__dropdown-item">PickUp</a>
                                        <a href="SP_UnsuccessfullyDelivery" class="nav__dropdown-item">Unsuccessfully Delivery Attempt</a>
                                    </div>
                                </div>
                            </div>
                            <a href="SP_TrackOrder" class="nav__link ">
                                <i class='bx bx-current-location nav__icon' ></i>
                                <span class="nav__name">Track Order</span>
                            </a>
                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">               
                                   	<i class='bx bxs-report nav__icon'></i>
                                    <span class="nav__name">Reports</span>
                                    <i class='bx bx-chevron-down nav__icon nav__dropdown-icon'></i>
                                </a>
								<div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="SP_ProductReport" class="nav__dropdown-item">Product Report</a>
                                        <a href="SP_ParcelReport" class="nav__dropdown-item">Parcel Report</a>
                                    </div>
                                </div>
                            </div>
                        </div>
    
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Profile</h3>
                            <a href="SP_ManageAccount" class="nav__link">
                                <i class='bx bx-compass nav__icon' ></i>
                                <span class="nav__name">Manage Account</span>
                            </a>
                            <small class="nav__subtitle" style = "font-size:12px;"> Welcome, <b style = "text-transform:lowercase;"><%= session.getAttribute("emailid") %></b></small>
                        </div>
                    </div>
                </div>

                <a href="SP_LogOut" class="nav__link nav__logout">
                    <i class='bx bx-log-out nav__icon' ></i>
                    <span class="nav__name">Log Out</span>
                </a>
            </nav>
        </div>

        <!--========== CONTENTS ==========-->
        <div class = "container-fluid page-header text-center">
        	<b>View New Added Product</b>
        
         </div>
        
    	<div class = "container-fluid viewproduct-container">
         	<div class="row">
		        <div class="col-md-5">
		        	<div class="carousel-container position-relative">
			            <!-- Sorry! Lightbox doesn't work - yet. -->
			            <div id="myCarousel" class="carousel slide" data-ride="carousel" style = "height:400px;">
			              <div class="carousel-inner justify-content-center" style = "height:300px;width:100%;">
			              <div class = "inner-minimized mx-auto" style = "height:100%;width:100%;">
			              	<%
			                	if(pb.getProdimg1().equals("undefined")){}
			                	else{
			                %>
			                <div class="carousel-item active " style = "height:100%;" data-slide-number="0">
			                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" style = "height:100%;width:100%;eight:100%;width:100%;object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
			                </div>
			                <%
			                	}
			                	if(pb.getProdimg2().equals("undefined")){}
			                	else{
			                %>
			                <div class="carousel-item" style = "height:100%;" data-slide-number="1">
			                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg2() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg2() %>" style = "height:100%;width:100%;object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
			                </div>
			                <%
			                	}
			                	if(pb.getProdimg3().equals("undefined")){}
			                	else{
			                %> 
			                <div class="carousel-item" style = "height:100%;" data-slide-number="2">
			                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg3() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg3() %>" style = "height:100%;width:100%;object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
			                </div>
			                <%
			                	}
			                	if(pb.getProdimg4().equals("undefined")){}
			                	else{
			                %>
			                <div class="carousel-item" style = "height:100%;" data-slide-number="3">
			                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg4() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg4() %>" style = "height:100%;width:100%;object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
			                </div>
			                <%
			                	}
			                	if(pb.getProdimg5().equals("undefined")){}
			                	else{
			                %>
			                <div class="carousel-item" style = "height:100%;" data-slide-number="4">
			                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg5() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg5() %>" style = "height:100%;width:100%;object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
			                </div>
			                <%
			                	}
			                	if(pb.getProdimg6().equals("undefined")){}
			                	else{
			                %>
			                <div class="carousel-item" style = "height:100%;" data-slide-number="5">
			                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg6() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg6() %>" style = "height:100%;width:100%;object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
			                </div>
			                <%
			                	}
			                	if(pb.getProdimg7().equals("undefined")){}
			                	else{
			                %>
			                <div class="carousel-item" style = "height:100%;" data-slide-number="6">
			                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg7() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg7() %>" style = "height:100%;width:100%;object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
			                </div>
			                <%
			                	}
			                	if(pb.getProdimg8().equals("undefined")){}
			                	else{
			                %>
			                <div class="carousel-item" style = "height:100%;" data-slide-number="7">
			                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg8() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg8() %>" style = "height:100%;width:100%;object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
			                </div>
			                <%
			                	}
			                	if(pb.getProdimg9().equals("undefined")){}
			                	else{
			                %>
			                <div class="carousel-item" style = "height:100%;" data-slide-number="8">
			                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg9() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg9() %>" style = "height:100%;width:100%;object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
			                </div>
			                <%
			                	}
			                	if(pb.getProdimg10().equals("undefined")){}
			                	else{
			                %>
			                <div class="carousel-item" style = "height:100%;" data-slide-number="9">
			                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg10() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg10() %>" style = "height:100%;width:100%;object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
			                </div>
			                <%
			                	}
			                %>
			              </div>
			                
			              </div>
			            </div>
			             
			            <!-- Carousel Navigation -->
			            <div id="carousel-thumbs" class="carousel slide" data-ride="carousel">
			              <div class="carousel-inner" style = "height:100px;">
			                <div class="carousel-item active" >
			                  <div class="row mx-0">
			                  	<%
			                		if(pb.getProdimg1().equals("undefined")){}
				                	else{
				                %>
			                    <div id="carousel-selector-0" class="thumb col-4 col-sm-2 px-1 py-2 selected" data-target="#myCarousel" data-slide-to="0">
			                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="img-fluid"  alt="...">
			                    </div>
			                    <% 
				                	}
			                    	if(pb.getProdimg2().equals("undefined")){}
				                	else{
				                %>
			                    <div id="carousel-selector-1" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="1">
			                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg2() %>" class="img-fluid" alt="...">
			                    </div>
			                    <%
				                	}
			                		if(pb.getProdimg3().equals("undefined")){}
				                	else{
				                %>
			                    <div id="carousel-selector-2" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="2">
			                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg3() %>" class="img-fluid" alt="...">
			                    </div>
			                    <%
				                	}
				                	if(pb.getProdimg4().equals("undefined")){}
				                	else{
				                %>
			                    <div id="carousel-selector-3" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="3">
			                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg4() %>" class="img-fluid" alt="...">
			                    </div>
			                    <%
				                	}
				                	if(pb.getProdimg4().equals("undefined")){}
				                	else{
				                %>
			                    <div id="carousel-selector-4" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="4">
			                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="img-fluid" alt="...">
			                    </div>
			                    <%
				                	}
				                	if(pb.getProdimg4().equals("undefined")){}
				                	else{
				                %>
			                    <div id="carousel-selector-5" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="5">
			                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="img-fluid" alt="...">
			                    </div>
			                    <%
				                	
			                    %>
			                  </div>
			                </div>
			                <div class="carousel-item">
			                  <div class="row mx-0">
			                  	<%
				                	}
				                	if(pb.getProdimg4().equals("undefined")){}
				                	else{
				                %>
			                    <div id="carousel-selector-6" class="thumb col-4 col-sm-2 px-1 py-2" style = "height:80px;width:80px" data-target="#myCarousel" data-slide-to="6">
			                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="img-fluid" alt="...">
			                    </div>
			                    <%
				                	}
				                	if(pb.getProdimg4().equals("undefined")){}
				                	else{
				                %>
			                    <div id="carousel-selector-7" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="7">
			                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="img-fluid" alt="...">
			                    </div>
			                    <%
				                	}
				                	if(pb.getProdimg4().equals("undefined")){}
				                	else{
				                %>
			                    <div id="carousel-selector-8" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="8">
			                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="img-fluid" alt="...">
			                    </div>
			                    <%
				                	}
				                	if(pb.getProdimg4().equals("undefined")){}
				                	else{
				                %>
			                    <div id="carousel-selector-9" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="9">
			                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="img-fluid" alt="...">
			                    </div>
			                    <%
				                	}
			                    %>
			                    <div class="col-2 px-1 py-2"></div>
			                    <div class="col-2 px-1 py-2"></div>
			                  </div>
			                </div>
			              </div>
			              <a class="carousel-control-prev" href="#carousel-thumbs" role="button" data-slide="prev">
			                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			                <span class="sr-only">Previous</span>
			              </a>
			              <a class="carousel-control-next" href="#carousel-thumbs" role="button" data-slide="next">
			                <span class="carousel-control-next-icon" aria-hidden="true"></span>
			                <span class="sr-only">Next</span>
			              </a>
			            </div>
            
			          </div>
		        </div>
		        <div class="col-md-7">
		          <br>
		          <b class="product-title"><%= pb.getProductname() %></b>
			          <p class="product-subtitle"><%= pb.getProductsubtitle().equals("undefined")?"<br>":pb.getProductsubtitle() %></p>
			          <div class="rating-section">
			              <span class="fa fa-star checked staricon"></span>
			              <span class="fa fa-star checked staricon"></span>
			              <span class="fa fa-star checked staricon"></span>
			              <span class="fa fa-star staricon"></span>
			              <span class="fa fa-star staricon"></span>
			              3/5.
			          </div>
			          
			          <p class="delivery"><%= pb.getCashondelivery() %></p>
			          <div class="policies">
			            <b>Prepaid Available</b>
			            <p><%= pb.getAllowreturn().equals("Allow Return") && pb.getReturnperiod().equals("0")? "Not Allowed Return" :pb.getAllowreturn() +" "+ pb.getReturnperiod() %> Days.</p>
			          </div>
			          
		        </div>
		      </div>
        </div>
<%
	UserBean ub = UserDao.getShopDetailById(pb.getUserid());
%>       
        <div class = "shopname-container">
	      <p>Sold By:</p>
	      <h6><%= ub.getShopname().equals("undefined")?"":ub.getShopname() %> <small>(Owner Name <%= ub.getName() %>)</small></h6>
	    </div>
	    
	    <div class = "product-description-bar">
	      <b>Product Description</b>
	      <p class = "product-description pt-2">
	       <%= pb.getDescription() %>
    	</div>     
         
    <div class = "main-footer" style = "margin-top:50px;font-size:x-small;font-weight:bolder;text-align:center;bottom:0;">
		<p class = "main-footer-text">Copyright @ 2021 All Rights Reserved. Terms of Use | Privacy Policy AND Website Design and Developed By <b style = "font-style:oblique;font-weight:bolder;">Suraj Nikam</b></p>
	</div>
	

	<script src="./assets/js/jquery-3.5.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    
    <script src="./assets/js/main.js"></script>
    
    <script src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    <script type="text/javascript">
	//	$('.myDataTable').DataTable();
		
        var table = $('.myDataTable').DataTable({
            scrollY: 400,
            scrollX: true,
            scrollCollapse: true,
            
        });

        $('.myDataTable thead .search-col').each(function(){
            var title = $(this).text();
            $(this).jsp('<input type = "text" placeholder = "Search '+title+'" />');
        });
        
        table.columns().every(function(){
            var that = this;
            $('input', this.header()).on('keyup change', function(){
                if(that.search() !== this.value)
                {
                    that.search(this.value).draw();
                } 
            });
        });
		
   
        function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
        }
        
        
        

        
        </script>
</body>
</html>