<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
   	<title>ApniDukaanASC :: Edit Products</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
	<!--========== BOX ICONS ==========-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/form.css">
    <link rel="stylesheet" href="./assets/css/editproduct.css">
    <link href="https://transloadit.edgly.net/releases/uppy/v1.6.0/uppy.min.css" rel="stylesheet">
    
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
        	<b>Edit Products</b>
         </div>
        
        <div class = "container-fluid editproduct-container">
        	<form class = "form-body">
	            <div class="form-group">
	                <label for="inputAddress">Product Name</label>
	                <input type="text" class="form-control" name="productname" placeholder="Product Name">
	            </div>
	            <div class="form-group">
	                <label for="inputAddress">Product SubTitle</label>
	                <input type="text" class="form-control" name="productsubtitle" placeholder="Product SubTitle">
	            </div>
	            <div class="form-row">
	                <div class="form-group col-md-6">
	                    <label for="productprice">Price (in Rs.)</label>
	                    <input type="text" class="form-control" name="productprice" placeholder="Product Price">
	                </div>
	                <div class="form-group col-md-6">
	                    <label for="category">Category</label>
	                    <select name="category" class="form-control" style = "font-size: 12px;">
	                    <option selected>Choose Category...</option>
	                    <option>1</option>
	                    <option>2</option>
	                    <option>3</option>
	                    </select>
	                </div>
	            </div>
	
	            <hr>
	
	            <div class = "form-row">
	                <div class="col-10">
	                    <p>Allow To Cash On Delivery</p>
	                </div>
	                <div class="col-2 text-right">
	                    <input type = "checkbox" >
	                </div>
	                <div class="col-10">
	                    <p>Allow Return</p>
	                </div>
	                <div class="col-2 text-right">
	                    <input type = "checkbox">
	                </div>
	                
	            </div>
	            <div class = "notice-container">
	                <div class="col-md-12">
	                    <p>Free Delivery for first 5 Orders.</p>
	                    <p>Delivery Fee Rs.40</p>
	                    <p>Best-in-class services from trusted courier partners</p>
	                </div>
	            </div>
	
	            <hr>
	            <div class = "form-header text-left">
	                <b>Additional Options</b>
	            </div>
	            <br>
	            <div class="row">
	                <div class="col-md-6">
	                    <div class="row">
	                        <div class="form-group col">
	                            <label for="sizeheight">Size (in Height)</label>
	                            <input type="text" class="form-control" name="sizeheight" placeholder="Size In Height">
	                        </div>
	                        <div class="form-group col">
	                            <label for="sizewidth">Size (in Width)</label>
	                            <input type="text" class="form-control" name="sizewidth" placeholder="Size In Width">
	                        </div>
	                    </div>
	                </div>
	                <div class="col-md-6">
	                    <div class="row">
	                        <div class="form-group col">
	                            <label for="stock">Total Stock</label>
	                            <input type="text" class="form-control" name="stock" placeholder="Total Stock">
	                        </div>
	                        <div class="form-group col">
	                            <label for="returnperiod">Return Period</label>
	                            <input type="text" class="form-control" name="returnperiod" placeholder="Return Period">
	                        </div>
	                    </div>  
	                </div>
	                <div class="col-md-12">
	                    <div class="form-group">
	                        <label for="description">Description</label>
	                        <br>
	                        <textarea style="width: 100%;"></textarea>
	                    </div>
	                </div>
	                <div class="col-md-12" >
					  <div class="form-group">
	                        <label for="upload">Upload Images</label>
	                        <div id="drag-drop-area"></div>
	                  </div>
					</div>
	                
	            </div>
	            
	            <div class = "text-center">
	                <!-- Button trigger modal -->
	                <button type="button" class="btn btn-primary form-control"  data-toggle="modal" data-target="#exampleModalCenter" style = "font-size: 12px;font-weight: bolder;" >Submit</button>
	            </div>
	            
	            <!-- Modal -->
	            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	                <div class="modal-dialog modal-dialog-centered" role="document">
	                <div class="modal-content">
	                    <div class="modal-header text-center">
	                    <h5 class="modal-title" id="exampleModalLongTitle">Confirmation</h5>
	                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                        <span aria-hidden="true">&times;</span>
	                    </button>
	                    </div>
	                    <div class="modal-body text-center">
	                        <div class = "modal-symbol">
	                            <img src="https://media.giphy.com/media/YlSR3n9yZrxfgVzagm/giphy.gif" class="modal-image" style = "height:100px; width: 100px;"> <!-- saved -->
	                            <!-- <img src="https://media.giphy.com/media/L2NX9o62VOsZqH8IPp/giphy.gif" class="modal-image">  delete -->
	                            <!-- <img src="https://media.giphy.com/media/hlvIX2f1zeLESr2DI4/giphy.gif" class="modal-image">  update -->  
	                        </div>
	                    Data Saved Successfully!!!
	                    </div>
	                    <div class="modal-footer">
	                    <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button> -->
	                        <button type="button" class="btn btn-primary" onclick = "validation()">Okay</button>
	                    </div>
	                </div>
	                </div>
	            </div>
	            
	            <br>
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
    
    <script src="https://transloadit.edgly.net/releases/uppy/v1.6.0/uppy.min.js"></script>
    
    <script>
	    var uppy = Uppy.Core()
	    .use(Uppy.Dashboard, {
	      inline: true,
	      target: '#drag-drop-area'
	    })
	    .use(Uppy.Tus, {endpoint: 'https://master.tus.io/files/'}) //you can put upload URL here, where you want to upload images
	
		uppy.on('complete', (result) => {
		  console.log('Upload complete! We???ve uploaded these files:', result.successful)
		})    
	  
	  	uppy.getPlugin('Dashboard').setOptions({
		  width: 1200
		})
		
		uppy.setOptions({
		  restrictions: { 
			  	maxFileSize: null,
			    minFileSize: null,
			    maxTotalFileSize: 250,
			    maxNumberOfFiles: 10,
			    minNumberOfFiles: null,
			    allowedFileTypes: null  
		  },
		  
		})
		
		
	</script>
    
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