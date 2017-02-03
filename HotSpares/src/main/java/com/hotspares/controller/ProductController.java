package com.hotspares.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hotspares.model.Product;
import com.hotspares.service.ProductService;

@Controller
public class ProductController 
{
	@Autowired
	private ProductService productService;
	
	public ProductController()
	{
		System.out.println("Creating instance for ProductController");
	}
	
	@RequestMapping("/ProductForm")
	public ModelAndView gotoProduct(@ModelAttribute("prdfrm")Product prdfrm) 
	{
		  return new ModelAndView("ProductForm");
	}
	
	
	@RequestMapping(value = "saveProduct", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("prdfrm")Product prdfrm)
	{
		
		productService.insertRow(prdfrm);
		List<Product> ls=productService.getList();
		return new ModelAndView("ProductForm","productList",ls);
	}
	
	@RequestMapping("/listProducts")
	public ModelAndView listallProducts()
	{
		List<Product> ls=productService.getList();
		return new ModelAndView("listProducts","productList",ls);
	}
	
	@RequestMapping("deleteProduct")
	public ModelAndView deleteproduct(@RequestParam int id)
	{
		
		productService.deleteRow(id);
		return new ModelAndView("redirect:listProducts");
	}
	
	@RequestMapping("/editProduct")
	public ModelAndView editproduct(@ModelAttribute("prdfrm")Product prdfrm,@RequestParam int id)
	{
		prdfrm=productService.getRowById(id);
		ModelAndView mv=new ModelAndView("editProduct","prod",prdfrm);
		return mv;
		
	}
	
	
	@RequestMapping(value="updateProduct",method=RequestMethod.POST)
	public ModelAndView updateproduct(@ModelAttribute("prdfrm")Product prdfrm)
	{
		productService.updateRow(prdfrm);
		return new ModelAndView("redirect:listProducts");
		
	}
	

	
}
