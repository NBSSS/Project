package com.niit.backendProject.dao;

import java.util.List;

import com.niit.backendProject.model.Cart;

public interface CartDAO {
	
	   /*1.--This method is used to insert the values in database--*/
        
	           public boolean save(Cart k);

	   /*2.--This method is used to update the values in database--*/

               public  boolean update(Cart k);
               
      /*3.--This method is used to delete the values from database--*/    
               
               public boolean delete(Cart k);
               
      /*4.--This method is used to get all list of cart products according to userId--*/    
       
               public List<Cart>list(String userId);
               
     /*5.--This method is used to get the cart through cartId--*/
               
               public Cart get(int cartId);
               
              
    /*6.--This method is used to get total amount for particular user id in cart--*/ 
               
               public Double getTotalAmmount(String userId);
               
    /*7.--This method is used to get the cart via userId and product name --*/           
               
               public Cart getCart(String userId);
               
    /*8.--This method is used to get quantity  --*/     
               public 	Integer getQty(String pname);
               
}
