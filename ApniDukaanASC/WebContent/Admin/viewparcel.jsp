<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
   	<title>ApniDukaanASC :: View Parcel</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
	<!--========== BOX ICONS ==========-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/form.css">
    <link rel="stylesheet" href="./assets/css/parcel.css">
    
   
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
	<!--========== HEADER ==========-->
        <header class="header">
            <div class="header__container">
				
                <a href="AdminPanel" class="header__logo" style = "text-decoration:none;">ApniDukaanASC - Admin Panel</a>
    
                <div class="header__search">
                    <input list="browsers" name="browser" id="browser" placeholder="Search" class="header__input"><i class='bx bx-search header__icon'></i>
                    <datalist id="browsers" style = "height: 80vh;">
					  <option value="Home">
					  <option value="Add New Branch">
					  <option value="Branch List">
					  <option value="Add New Branch Staff">
					  <option value="Branch Staff List">
					  <option value="Add New Parcel">
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
                            <a href="Reports" class="nav__link ">
                                <i class='bx bxs-report nav__icon' ></i>
                                <span class="nav__name">Reports</span>
                            </a>
                        </div>
    
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Profile</h3>
                            <a href="ManageAccount" class="nav__link">
                                <i class='bx bx-compass nav__icon' ></i>
                                <span class="nav__name">Manage Account</span>
                            </a>
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
        	<b>View Parcel</b>
        
        </div>
        
        <div class="container-fluid parcel-container">	
			<form>
				<div class="parcel-sub-container">
					<b class = "parcel-header">Track ID: 505604168988</b>
				</div>
				<br>
	        	<div class = "row">
	        		<div class = "col-md-6">
	        			<div class = "parcel-card">
	        				<b>Sender Information</b>
			              	<div class="form-group">
			                	<label for="" class="control-label">Name</label>
			                	<input type="text" name="sender_name" id="" class="form-control form-control-sm" value="John Smith" required="">
			              	</div>
			              	<div class="form-group">
			                	<label for="" class="control-label">Address</label>
			                	<input type="text" name="sender_address" id="" class="form-control form-control-sm" value="Sample" required="">
			              	</div>
			              	<div class="form-group">
			                	<label for="" class="control-label">Contact #</label>
			                	<input type="text" name="sender_contact" id="" class="form-control form-control-sm" value="+123456" required="">
			              	</div>	
	        			</div>
	        		</div>
	        		<div class = "col-md-6">
	        			<div class = "parcel-card">
	        				<b>Recipient Information</b>
			              	<div class="form-group">
			                	<label for="" class="control-label">Name</label>
			                	<input type="text" name="recipient_name" id="" class="form-control form-control-sm" value="Sample" required="">
			              	</div>
			              	<div class="form-group">
			                	<label for="" class="control-label">Address</label>
			                	<input type="text" name="recipient_address" id="" class="form-control form-control-sm" value="Sample" required="">
			              	</div>
			              	<div class="form-group">
			                	<label for="" class="control-label">Contact #</label>
			                	<input type="text" name="recipient_contact" id="" class="form-control form-control-sm" value="+12345" required="">
			              	</div>	
	        			</div>
	        		</div>
	        	</div>
	        	<div class="parcel-sub-container mt-4">
					<b class = "parcel-header">Parcel Details:</b>
					
					<div class = "row mt-2">
						<div class = "col-md-2">
							<div class="form-group">
			                	<label for="" class="control-label">Weight</label>
			                	<input type="text" name="weight" id="" class="form-control form-control-sm" placeholder="Weight" required="">
			              	</div>
						</div>
						<div class = "col-md-2">
							<div class="form-group">
			                	<label for="" class="control-label">Height</label>
			                	<input type="text" name="height" id="" class="form-control form-control-sm" placeholder="Height" required="">
			              	</div>
						</div>
						<div class = "col-md-2">
							<div class="form-group">
			                	<label for="" class="control-label">Width</label>
			                	<input type="text" name="width" id="" class="form-control form-control-sm" value="Width" required="">
			              	</div>
						</div>
						<div class = "col-md-2">
							<div class="form-group">
			                	<label for="" class="control-label">Length</label>
			                	<input type="text" name="length" id="" class="form-control form-control-sm" value="Length" required="">
			              	</div>
						</div>
						<div class = "col-md-2">
							<div class="form-group">
			                	<label for="" class="control-label">Price</label>
			                	<input type="text" name="price" id="" class="form-control form-control-sm" value="Price" required="">
			              	</div>
						</div>
						<div class = "col-md-2">
							<div class="form-group">
			                	<label for="" class="control-label">Type</label>
			                	<input type="text" name="type" id="" class="form-control form-control-sm" value="Type" required="">
			              	</div>
						</div>
						<div class = "col-md-12">
							<div class="form-group">
			                	<label for="" class="control-label">Branch Accepted the Parcel:</label>
			                	<p class = "parcel-address">Sample, Sample, Sample, 123456, Philippines</p>
			              	</div>
			              	<div class="form-group">
			                	<label for="" class="control-label">Nearest Branch to Recipient for Pickup:</label>
			                	<p class = "parcel-address">Branch 1 St., Quiapo, Manila, Metro Manila, 1001, Philippines</p>
			              	</div>
						</div>
					</div>
				</div>
				<div class="parcel-sub-container">
					<b class = "parcel-header">Status: <span class = "parcel-status">Delivered</span></b>
					
				</div>
				
	            </form>
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