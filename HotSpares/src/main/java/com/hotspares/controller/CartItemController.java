package com.hotspares.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.hotspares.model.Cart;
import com.hotspares.model.CartItem;
import com.hotspares.model.Product;
import com.hotspares.model.Signup;
import com.hotspares.service.CartItemService;
import com.hotspares.service.ProductService;
import com.hotspares.service.SignupService;


@Controller
public class CartItemController 
{
	
	
	
	public CartItemController() {
		//super();
		// TODO Auto-generated constructor stub
		System.out.println("inside cartitem controller.....");
	}

	@Autowired
	private CartItemService cartItemService;
	
	
	
	@Autowired
	private SignupService signupService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/addCartItem/{productId}")
	//@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void addCartItem(@PathVariable int productId){
		System.out.println("inside addCartItem method.....");
		User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username=user.getUsername();
		
		Signup signup=signupService.getSignupByEmail(username);
		Cart cart=signup.getCart(); //taking cart_id for the logged in user
		List<CartItem> cartItems=cart.getCartItems();		//listing the cart_items in that user id
		Product  product = productService.getProductById(productId);		//getting the product by product id
		for (int i = 0; i <cartItems.size(); i++) {
			System.out.println("inside for loops**************************");
			CartItem cartItem=cartItems.get(i);
			Product p=cartItem.getProduct();	//getting the product_id of that cart_item
			System.out.println(p.getProductid()+":"+p.getName());
			System.out.println("productId......"+productId);
			     //1    ==  1
			//int proid=cart.getId();
			if(p.getProductid().equals(productId)){
				System.out.println("inside the if condition****************************");
				System.out.println("Quantity:"+cartItem.getQuantity() );
				int a=cartItem.getQuantity() +1;
				System.out.println("quantity****************************"+cartItem.getQuantity());
				
				cartItem.setQuantity(a);//increment the quantity
				System.out.println("Quantity"+a);
				
				System.out.println("Product Quantity:"+p.getPquantity());
				int b=p.getPquantity() - a;
				System.out.println("Product Quantity:"+b );
				p.setPquantity(b);
				System.out.println("Price:"+p.getPrice() );
				int c=(int) (cartItem.getQuantity() * p.getPrice());
				System.out.println("Total Price:"+c );
				cartItem.setTotalPrice(c); //update the total price
				productService.updateRow(p);
				cartItemService.addCartItem(cartItem);//update the quantity in the cartitem
				
				return ;
			}	
			 
		}

				CartItem c=new CartItem();
				c.setQuantity(1);
				System.out.println("quantity****************************"+c.getQuantity());
				c.setTotalPrice(c.getQuantity() * product.getPrice());
				c.setProduct(product); //set product id
				c.setCart(cart);//set cart id
				cartItemService.addCartItem(c);
				
		
		
		
        
	}
}


	/*@RequestMapping(value="/addCartItem/{productid}")
	public void addCartItem(@PathVariable int productid){
		User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username=user.getUsername();
		Signup signup=signupService.getSignupByEmail(username);
		Cart cart=signup.getCart();
		List<CartItem> cartItems=cart.getCartItems();
		Product product=productService.getProductById(productid);
		
		for(int i=0;i<cartItems.size(); i++)
		{
			CartItem cartItem=cartItems.get(i);
			Product p=cartItem.getProduct();
			if(p.getProductid()==productid)
			{
				cartItem.setQuantity(cartItem.getQuantity()+1);
				cartItem.setTotalPrice(cartItem.getQuantity()*p.getPrice());
				cartItemService.addCartItem(cartItem);
				return ;
			}
		}
		CartItem cartItem=new CartItem();
		cartItem.setQuantity(1);
		cartItem.setTotalPrice(cartItem.getQuantity()*product.getPrice());
		cartItem.setProduct(product);
		cartItem.setCart(cart);
		cartItemService.addCartItem(cartItem);
	}*/
	

