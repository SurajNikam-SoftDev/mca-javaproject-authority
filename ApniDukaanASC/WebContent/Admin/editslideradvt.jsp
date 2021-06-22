<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
   	<title>ApniDukaanASC :: Edit Slider Advertisement</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
	<!--========== BOX ICONS ==========-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/form.css">
    
   
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script type = "text/javascript">
        
    	function validation(){
    		
    		var contactexp = /^\d{10}$/;
			var emailexp = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			var zipexp = /^\d{6}$/;
			var letterexp = /^[A-Za-z]+$/;
    		
			if(document.form.firstname.value == '')
    		{
    			document.getElementById("errorspan").innerHTML = "Enter First Name";  
    			return false;
    		}
    		else if(!document.form.firstname.value.match(letterexp))
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Letters Only";  
    			return false;
    		} 
    		else if(document.form.middlename.value == '')
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Middle Name";  
    			return false;
    		}
    		else if(!document.form.middlename.value.match(letterexp))
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Letters Only";  
    			return false;
    		}
    		else if(document.form.lastname.value == '')
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Last Name";  
    			return false;
    		}
    		else if(!document.form.lastname.value.match(letterexp))
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Letters Only";  
    			return false;
    		}
    		else if(document.form.contactno.value == '')
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Contact Number";  
    			return false;
    		}
    		else if(!document.form.contactno.value.match(contactexp))
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Correct Contact Number";  
    			return false;
    		}
    		else if(document.form.rank.value == -1)
    		{
    			document.getElementById("errorspan").innerHTML = "Select Rank";  
    			return false;
    		}
    		else if(document.form.startdatetime.value == '')
    		{
    			document.getElementById("errorspan").innerHTML = "Select Start Date & Time";  
    			return false;
    		}
    		else if(document.form.enddatetime.value == '')
    		{
    			document.getElementById("errorspan").innerHTML = "Select End Date & Time";  
    			return false;
    		}
    		else if(document.form.uploadimage.value == '')
    		{
    			document.getElementById("errorspan").innerHTML = "Select Advertisement Image";  
    			return false;
    		}
    		else 
    		{
    			document.getElementById("errorspan").innerHTML = "";
    			return true;
    		}
			
    	} 
    </script>
</head>
<style>
[list]::-webkit-calendar-picker-indicator {
    display: none;
  }

datalist{
	max-height: 100px;
}

input[type=date], input[type=file]{
    font-size: 12px;   
    outline: none;  
}
</style>
<body>
<%
	if(session.getAttribute("emailid")==null)
	{
		response.sendRedirect("./LogIn");
	}	
%>
	<!--========== HEADER ==========-->
        <header class="header">
            <div class="header__container">
				
                <a href="AdminPanel" class="header__logo" style = "text-decoration:none;">ApniDukaanASC - Admin Panel |<small> Welcome, <%= session.getAttribute("emailid") %></small></a>
    
                <div class="header__search">
                    <input list="browsers" name="browser" id="browser" placeholder="Search" class="header__input"><button type = "submit" onclick = "return search()" style = "border:none;outline:0px;background-color:lightgrey;border-radius:15%"><i class='bx bx-search header__icon'></i></button>
                    <datalist id="browsers" style = "height: 80vh;">
					  <option value="Home">
					  <option value="Add New Staff">
					  <option value="Staff List">
					  <option value="List Of Slider ADVT">
					  <option value="List Of Fixed ADVT">
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
                    <a href="AdminPanel" class="nav__link nav__logo" >
                        <i class='bx bx-mask nav__icon' ></i>
                        <span class="nav__logo-name">AdminPanel</span>
                    </a>
    				<div class="nav__list">
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Menu</h3> 
    						<a href="AdminPanel" class="nav__link active">
                                <i class='bx bx-home nav__icon' ></i>
                                <span class="nav__name">Home</span>
                            </a>
                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                    <i class='bx bxl-ok-ru nav__icon'></i>
                                    <span class="nav__name">Staff</span>
                                    <i class='bx bx-chevron-down nav__icon nav__dropdown-icon'></i>
                                </a>
								<div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="AddNewStaff" class="nav__dropdown-item">Add New</a>
                                        <a href="StaffList" class="nav__dropdown-item">List</a>
                                    </div>
                                </div>
                            </div>
                            <div class="nav__dropdown">
                                <a href="#" class="nav__link">
                                	<i class='bx bx-border-radius nav__icon'></i>
                                    <span class="nav__name">advertisement</span>
                                    <i class='bx bx-chevron-down nav__icon nav__dropdown-icon'></i>
                                </a>
								<div class="nav__dropdown-collapse">
                                    <div class="nav__dropdown-content">
                                        <a href="ListOfSliderADVT" class="nav__dropdown-item">List Of Slider ADVT.</a>
                                        <a href="ListOFFixedADVT" class="nav__dropdown-item">List OF Fixed ADVT.</a>
                                    </div>
                                </div>
                            </div>
                            <a href="Shop_Customer" class="nav__link">
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
                                        <a href="NewAddedProductList" class="nav__dropdown-item">New Product List</a>
                                        <a href="ProductDetails" class="nav__dropdown-item">Product Details</a>
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
                                        <a href="ParcelList" class="nav__dropdown-item">List All</a>
                                        <a href="ItemAcceptByCourier" class="nav__dropdown-item">Item Accepted by courier</a>
                                        <a href="Collected" class="nav__dropdown-item">Collected</a>
                                        <a href="Shipped" class="nav__dropdown-item">Shipped</a>
                                        <a href="InTransit" class="nav__dropdown-item">In-Transit</a>
                                        <a href="ArrivedAtDestination" class="nav__dropdown-item">Arrived At Destination</a>
                                        <a href="OutForDelivery" class="nav__dropdown-item">Out For Delivery</a>
                                        <a href="ReadyToPickUp" class="nav__dropdown-item">Ready To PickUp</a>
                                        <a href="Delivered" class="nav__dropdown-item">Delivered</a>
                                        <a href="PickUp" class="nav__dropdown-item">PickUp</a>
                                        <a href="UnsuccessfullyDelivery" class="nav__dropdown-item">Unsuccessfully Delivery Attempt</a>
                                    </div>
                                </div>
                            </div>
                            <a href="TrackOrder" class="nav__link ">
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
                                        <a href="ProductReport" class="nav__dropdown-item">Product Report</a>
                                        <a href="ParcelReport" class="nav__dropdown-item">Parcel Report</a>
                                    </div>
                                </div>
                            </div>
                        </div>
    
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Profile</h3>
                            <a href="ManageAccount" class="nav__link">
                                <i class='bx bx-compass nav__icon' ></i>
                                <span class="nav__name">Manage Account</span>
                            </a>
                            <small class="nav__subtitle" style = "font-size:12px;"> Welcome, <b style = "text-transform:lowercase;"><%= session.getAttribute("emailid") %></b></small>
                        </div>
                    </div>
                </div>

                <a href="LogOut" class="nav__link nav__logout">
                    <i class='bx bx-log-out nav__icon' ></i>
                    <span class="nav__name">Log Out</span>
                </a>
            </nav>
        </div>
        <!--========== CONTENTS ==========-->
        
         <div class = "container-fluid page-header text-center">
        	<b>Add Slider ADVT</b>
        
        </div>
        <div class = "container-fluid form-container">
        	
        <form class = "form-body" name = "form">
            
           
            <div class="form-row">
            	<div class="col-md-12">
                    <label for="productprice">Owner Name<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" name="firstname" placeholder="First Name">
                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" name="middlename" placeholder="Middle Name">
                </div>
                <div class="form-group col-md-4">
                    <input type="text" class="form-control" name="lastname" placeholder="Last Name">
                </div>
            </div>
            <div class="form-row">
	            <div class="form-group col-md-6">
	                <label for="inputAddress">Contact No<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
	                <input type="text" class="form-control" name="contactno" placeholder="Contact No">
	            </div>
	            <div class="form-group col-md-6">
	                <label for="inputAddress">Advertisement Rank<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
	                 <select name="rank" class="form-control" style = "font-size: 12px;">
	                    <option value = "-1" selected>Choose Ranking...</option>
	                    <option>1</option>
	                    <option>2</option>
	                    <option>3</option>
	                    <option>4</option>
	                    <option>5</option>
	                </select>
	            </div>
            </div>
            <div class="form-row">
            	<div class="form-group col-md-6">
	                <label for="inputAddress">Start DateTime<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
	                <input type="date" class="form-control" name="startdatetime">
	            </div>
	            <div class="form-group col-md-6">
	                <label for="inputAddress">End DateTime<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
	                <input type="date" class="form-control" name="enddatetime">
	            </div>
            </div>
			<div class="form-group">
	            <label for="inputAddress">Upload Advertisement Image<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
	            <input type="file" class="form-control" name="uploadimage">
	        </div>
            
            
            <div class = "text-center">
                <!-- Button trigger modal -->
                <button type="submit" class="btn btn-primary form-control" style = "font-size: 12px;font-weight: bolder;" onclick = "return validation()">Submit</button>
            </div>
        
        </form>
        <div class = "text-center mt-2">
		   	<b><span id = "errorspan" style = "font-size:small;font-weight:bolder;color:red"></span></b>
		</div>
        
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
</body>
</html>