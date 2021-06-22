		function search()
    	{			 
    		var search = document.getElementById("browser").value;
    		//alert(search);
    		switch(search) {
    		  case 'Home':
    		      	window.location.href = 'StaffPanel';
    		    	break;
		    		
    		  case 'Shop & Customer Details':
  		      		window.location.href = 'SP_Shop_Customer';
  		    		break;
  		    		 		 
    		  case 'New Product List':
  		      		window.location.href = 'SP_NewProductList';
  		    		break;
  		    		
    		  case 'Product Details':
		      		window.location.href = 'SP_ProductDetails';
		    		break;
  		    	
    		  case 'Parcel List':
  		      		window.location.href = 'SP_ParcelList';
  		    		break;
  		    	
    		  case 'Item Accept By Courier':
  		      		window.location.href = 'SP_ItemAcceptByCourier';
  		    		break;
  		    	
    		  case 'Collected':
    		      	window.location.href = 'SP_Collected';
    		    	break;
    		    	
      		  case 'Shipped':
    		      	window.location.href = 'SP_Shipped';
    		    	break;
    		    	
      		  case 'In-Transit':
    		      	window.location.href = 'SP_InTransit';
    		    	break;
    		    	
      		  case 'Arrived At Destination':
    		      	window.location.href = 'SP_ArrivedAtDestination';
    		    	break;
    		    	
      		  case 'Out For Delivery':
    		      	window.location.href = 'SP_OutForDelivery';
    		    	break;
    		    	
      		  case 'Ready To PickUp':
  		      		window.location.href = 'SP_ReadyToPickUp';
  		    		break;
  		   
    		  case 'Delivery':
  		      		window.location.href = 'SP_Delivered';
  		    		break;
  		    	
    		  case 'PickUp':
  		      		window.location.href = 'SP_PickUp';
  		    		break;
  		    	
    		  case 'Unsuccessfully Delivery Attempt':
  		      		window.location.href = 'SP_UnsuccessfullyDelivery';
  		    		break;
  		    	
    		  case 'Track Order':
  		      		window.location.href = 'SP_TrackOrder';
  		    		break;
  		    	
    		  case 'Product Report':
    		      	window.location.href = 'SP_ProductReport';
    		    	break;
    		    	
    		  case 'Parcel Report':
     		      	window.location.href = 'SP_ParcelReport';
     		    	break;
    		    	
    		  case 'Manage Account':
    		      	window.location.href = 'SP_ManageAccount';
    		    	break;
    		    	
    		  default:
    			  	
    			  	return false;
    		    	// when all the other values not covered with cases above
    		    	// other code ...
    		}		  
    	}