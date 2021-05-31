<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
   	<title>ApniDukaanASC :: View Shop Products</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
	<!--========== BOX ICONS ==========-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/form.css">
    <link rel="stylesheet" href="./assets/css/productcard.css">
    
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
</style>
<body>
		<!--========== HEADER ==========-->
        <header class="header">
            <div class="header__container">
				
                <a href="StaffPanel" class="header__logo" style = "text-decoration:none;">ApniDukaanASC - Staff Panel</a>
    
   				<div class="header__search">
                    <input list="browsers" name="browser" id="browser" placeholder="Search" class="header__input"><i class='bx bx-search header__icon'></i>
                    <datalist id="browsers" style = "height: 80vh;">
					  <option value="Home">
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
                            <a href="SP_Reports" class="nav__link ">
                                <i class='bx bxs-report nav__icon' ></i>
                                <span class="nav__name">Reports</span>
                            </a>
                        </div>
    
                        <div class="nav__items">
                            <h3 class="nav__subtitle">Profile</h3>
                            <a href="SP_ManageAccount" class="nav__link">
                                <i class='bx bx-compass nav__icon' ></i>
                                <span class="nav__name">Manage Account</span>
                            </a>
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
        	<b>View Shop Products</b>
        
        </div>
        
        <div class="container-fluid product-cards-container">
	        <div class="row">
	            <div class="col-md-4">
	                <div class="row">
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;"  onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;"  onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div> 
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div>
	                </div>      
	            </div>
	            <div class="col-md-4">
	                <div class="row">
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div> 
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div>
	                </div>      
	            </div> 
	            <div class="col-md-4">
	                <div class="row">
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div> 
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div>
	                </div>      
	            </div>
	            <div class="col-md-4">
	                <div class="row">
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div> 
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div>
	                </div>      
	            </div>
	            <div class="col-md-4">
	                <div class="row">
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div> 
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div>
	                </div>      
	            </div> 
	            <div class="col-md-4">
	                <div class="row">
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div> 
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div>
	                </div>      
	            </div>
	            <div class="col-md-4">
	                <div class="row">
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div> 
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div>
	                </div>      
	            </div>
	            <div class="col-md-4">
	                <div class="row">
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div> 
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div>
	                </div>      
	            </div>  
	            <div class="col-md-4">
	                <div class="row">
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div> 
	                    <div class="col" style="padding:5px;">
	                        <div class = "card product-card" style="background-color: white;border-radius:18px;">
	                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap" style = "border-radius:18px;">
	                            <div class="card-body" style = "border-radius:18px;">
	                                
	                                <p class="card-text text-left"><b>Product Title </b></p>
	                                <p class="card-text text-right inr-price">Rs. 650.00</p>
	                            </div>
	                            <div class="btn-group" role="group" aria-label="Basic example" >
	                                <button type="button" class="btn btn-warning" data-toggle="tooltip" data-placement="top" title="View Product" style = "border-radius:0px 0px 0px 18px;" onclick="location.href='SP_ViewProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">visibility</i></button>
	                                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Product" onclick="location.href='SP_DeleteProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style ="color:white;">delete</i></button>
	                                <button type="button" class="btn btn-success" data-toggle="tooltip" data-placement="top" title="Edit Product" style = "border-radius:0px 0px 18px 0px;font-size:13px;" onclick="location.href='SP_EditProduct'"> <i class="material-icons nav__icon pt-2 pl-2" style="color:white;">draw</i></button>
	                            </div>
	                        </div>
	                    </div>
	                </div>      
	            </div>
	            
	             
	            
	                  
	        </div>
	     </div> 
	
	    <br>    
	    <div class="page-pagination">
	        <a href="#" class="previous">&laquo; Previous</a>
	        <a href="#" class="next">Next &raquo;</a>      
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