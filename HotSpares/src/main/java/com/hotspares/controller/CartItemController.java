package com.hotspares.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@Autowired
	private CartItemService cartItemService;
	
	@Autowired
	private SignupService signupService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/cart/addCartItem/{pid}")
	public void addCartItem(@PathVariable(value="pid") int productId){
		User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String email=user.getUsername();
		Signup signup=signupService.getSignupByEmail(email);
		Cart cart=signup.getCart();
		List<CartItem> cartItems=cart.getCartItems();
		Product  product = productService.getProductById(productId);
		for (int i = 0; i <cartItems.size(); i++) {
			CartItem cartItem=cartItems.get(i);
			Product p=cartItem.getProduct();
			     //1    ==  1
			if(p.getProductid()==productId){
				cartItem.setQuantity(cartItem.getQuantity() + 1);//increment the quantity
				cartItem.setTotalPrice(cartItem.getQuantity() * p.getPrice()); //update the total price
				cartItemService.addCartItem(cartItem);//update the quantity in the cartitem
				return;
			}	
		}
		
		CartItem cartItem=new CartItem();
		cartItem.setQuantity(1);
		cartItem.setTotalPrice(cartItem.getQuantity() * product.getPrice());
		cartItem.setProduct(product); //set product id
		cartItem.setCart(cart);//set cart id
		cartItemService.addCartItem(cartItem); //insert query	

	}
}
