<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
   	<title>ApniDukaanASC :: Shipped</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
	<!--========== BOX ICONS ==========-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/form.css">
    <link rel="stylesheet" href="./assets/css/filtertable.css">
    
   
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
        	<b>Shipped</b>
        
        </div>
        
        <div class="container-fluid filter-container" style= "" >
			<form class = "form-body">
	            <div class="form-row">
	                <div class="form-group col-md-5">
	                    <label for="datefrom">Date From</label>
	                    <input type="date" class="form-control" name="datefrom">
	                </div>
	                <div class="form-group col-md-5">
	                    <label for="dateto">Date To</label>
	                    <input type="date" class="form-control" name="dateto">
	                </div>
	                <div class="form-group col-md-2">
	                    <div class = "text-right mt-4">
			                <!-- Button trigger modal -->
			                <button type="button" class="btn btn-primary"  style = "font-size: 12px;font-weight: bolder;" >Search</button>
			            </div>
	                </div> 
	            </div>
        	</form>
        
		</div>   
    

		<div class="container-fluid table-container" style= "" >
			
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
                <tr>
                    <td>suraj</td>
                    <td>gajanan</td>
                    <td>nikam</td>
                    <td>8788451215</td>
                    <td>suraj123@gmail.com</td>
                    <td class = "text-center">
                    	<a href="javascript:void(0)" onclick="location.href='ViewParcel'" class = "" style = "text-decoration: none;" data-toggle="tooltip" data-placement="bottom" title="View" data-toggle="tooltip" data-placement="bottom" title="View"><i class="material-icons nav__icon">visibility</i></a>
                    </td>
                </tr>
                <tr>
                    <td>akshay</td>
                    <td>gajanan</td>
                    <td>nikam</td>
                    <td>1846524121</td>
                    <td>akshay123@gmail.com</td>
                    <td class = "text-center">
                    	<a href="javascript:void(0)" onclick="location.href='ViewParcel'" class = "" style = "text-decoration: none;" data-toggle="tooltip" data-placement="bottom" title="View" data-toggle="tooltip" data-placement="bottom" title="View"><i class="material-icons nav__icon">visibility</i></a>
                    </td>
                </tr>
                <tr>
                    <td>mayur</td> 
                    <td>a</td>
                    <td>pawale</td>
                    <td>2541251215</td>
                    <td>mayur123@gmail.com</td>
                    <td class = "text-center">
                    	<a href="javascript:void(0)" onclick="location.href='ViewParcel'" class = "" style = "text-decoration: none;" data-toggle="tooltip" data-placement="bottom" title="View" data-toggle="tooltip" data-placement="bottom" title="View"><i class="material-icons nav__icon">visibility</i></a>
                    </td>
                </tr>
                <tr>
                    <td>suresh</td>
                    <td>k</td>
                    <td>choudhary</td>
                    <td>2463541515</td>
                    <td>suresh123@gmail.com</td>
                    <td class = "text-center">
                    	<a href="javascript:void(0)" onclick="location.href='ViewParcel'" class = "" style = "text-decoration: none;" data-toggle="tooltip" data-placement="bottom" title="View" data-toggle="tooltip" data-placement="bottom" title="View"><i class="material-icons nav__icon">visibility</i></a>
                    </td>
                </tr>
                <tr>
                    <td>vishal</td>
                    <td>j</td>
                    <td>chillal</td>
                    <td>2168574122</td>
                    <td>vishal123@gmail.com</td>
                    <td class = "text-center">
                    	<a href="javascript:void(0)" onclick="location.href='ViewParcel'" class = "" style = "text-decoration: none;" data-toggle="tooltip" data-placement="bottom" title="View" data-toggle="tooltip" data-placement="bottom" title="View"><i class="material-icons nav__icon">visibility</i></a>
                    </td>
                </tr>
                <tr>
                    <td>ajay</td>
                    <td>g</td>
                    <td>shinde</td>
                    <td>13525010652</td>
                    <td>ajay123@gmail.com</td>
                    <td class = "text-center">
                    	<a href="javascript:void(0)" onclick="location.href='ViewParcel'" class = "" style = "text-decoration: none;" data-toggle="tooltip" data-placement="bottom" title="View" data-toggle="tooltip" data-placement="bottom" title="View"><i class="material-icons nav__icon">visibility</i></a>
                    </td>
                </tr>
                <tr>
                    <td>akash</td>
                    <td>n</td>
                    <td>shinde</td>
                    <td>8416524121</td>
                    <td>akash123@gmail.com</td>
                    <td class = "text-center">
                    	<a href="javascript:void(0)" onclick="location.href='ViewParcel'" class = "" style = "text-decoration: none;" data-toggle="tooltip" data-placement="bottom" title="View" data-toggle="tooltip" data-placement="bottom" title="View"><i class="material-icons nav__icon">visibility</i></a>
                    </td>
                </tr>
                <tr>
                    <td>aniket</td> 
                    <td>a</td>
                    <td>mandavkar</td>
                    <td>7524151215</td>
                    <td>akash123@gmail.com</td>
                    <td class = "text-center">
                    	<a href="javascript:void(0)" onclick="location.href='ViewParcel'" class = "" style = "text-decoration: none;" data-toggle="tooltip" data-placement="bottom" title="View" data-toggle="tooltip" data-placement="bottom" title="View"><i class="material-icons nav__icon">visibility</i></a>
                    </td>
                </tr>
                <tr>
                    <td>sumesh</td>
                    <td>k</td>
                    <td>ojha</td>
                    <td>8653541515</td>
                    <td>sumesh123@gmail.com</td>
                    <td class = "text-center">
                    	<a href="javascript:void(0)" onclick="location.href='ViewParcel'" class = "" style = "text-decoration: none;" data-toggle="tooltip" data-placement="bottom" title="View" data-toggle="tooltip" data-placement="bottom" title="View"><i class="material-icons nav__icon">visibility</i></a>
                    </td>
                </tr>
                <tr>
                    <td>gaurav</td>
                    <td>n</td>
                    <td>kaveri</td>
                    <td>6118574122</td>
                    <td>gaurav123@gmail.com</td>
                    <td class = "text-center">
                    	<a href="javascript:void(0)" onclick="location.href='ViewParcel'" class = "" style = "text-decoration: none;" data-toggle="tooltip" data-placement="bottom" title="View" data-toggle="tooltip" data-placement="bottom" title="View"><i class="material-icons nav__icon">visibility</i></a>
                    </td>
                </tr>
                <tr>
                    <td>shubham</td>
                    <td>p</td>
                    <td>pawar</td>
                    <td>8755251215</td>
                    <td>shubham123@gmail.com</td>
                    <td class = "text-center">
                    	<a href="javascript:void(0)" onclick="location.href='ViewParcel'" class = "" style = "text-decoration: none;" data-toggle="tooltip" data-placement="bottom" title="View" data-toggle="tooltip" data-placement="bottom" title="View"><i class="material-icons nav__icon">visibility</i></a>
                    </td>
                </tr>
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