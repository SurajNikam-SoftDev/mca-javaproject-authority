		function search()
    	{			 
    		var search = document.getElementById("browser").value;
    		//alert(search);
    		switch(search) {
    		  case 'Home':
    		      	window.location.href = 'AdminPanel';
    		    	break;
    		    	
    		  case 'Add New Staff':
    		    	window.location.href = 'AddNewStaff';
    		    	break;
    		  
    		  case 'Staff List': 
  		      		window.location.href = 'StaffList';
  		    		break;
  		    		
    		  case 'List Of Slider ADVT':
  		    		window.location.href = 'ListOfSliderADVT';
  		    		break;
  		  
    		  case 'List Of Fixed ADVT':
		      		window.location.href = 'ListOFFixedADVT';
		    		break;
		    		
    		  case 'Shop & Customer Details':
  		      		window.location.href = 'Shop_Customer';
  		    		break;
  		    		 		 
    		  case 'New Product List':
  		      		window.location.href = 'NewAddedProductList';
  		    		break;
  		    		
    		  case 'Product Details':
		      		window.location.href = 'ProductDetails';
		    		break;
  		    	
    		  case 'Parcel List':
  		      		window.location.href = 'ParcelList';
  		    		break;
  		    	
    		  case 'Item Accept By Courier':
  		      		window.location.href = 'ItemAcceptByCourier';
  		    		break;
  		    	
    		  case 'Collected':
    		      	window.location.href = 'Collected';
    		    	break;
    		    	
      		  case 'Shipped':
    		      	window.location.href = 'Shipped';
    		    	break;
    		    	
      		  case 'In-Transit':
    		      	window.location.href = 'InTransit';
    		    	break;
    		    	
      		  case 'Arrived At Destination':
    		      	window.location.href = 'ArrivedAtDestination';
    		    	break;
    		    	
      		  case 'Out For Delivery':
    		      	window.location.href = 'OutForDelivery';
    		    	break;
    		    	
      		  case 'Ready To PickUp':
  		      		window.location.href = 'ReadyToPickUp';
  		    		break;
  		   
    		  case 'Delivery':
  		      		window.location.href = 'Delivered';
  		    		break;
  		    	
    		  case 'PickUp':
  		      		window.location.href = 'PickUp';
  		    		break;
  		    	
    		  case 'Unsuccessfully Delivery Attempt':
  		      		window.location.href = 'UnsuccessfullyDelivery';
  		    		break;
  		    	
    		  case 'Track Order':
  		      		window.location.href = 'TrackOrder';
  		    		break;
  		    	
    		  case 'Product Report':
    		      	window.location.href = 'ProductReport';
    		    	break;
    		    	
    		  case 'Parcel Report':
     		      	window.location.href = 'ParcelReport';
     		    	break;
    		    	
    		  case 'Manage Account':
    		      	window.location.href = 'ManageAccount';
    		    	break;
    		    	
    		  default:
    			  	
    			  	return false;
    		    	// when all the other values not covered with cases above
    		    	// other code ...
    		}		  
    	}