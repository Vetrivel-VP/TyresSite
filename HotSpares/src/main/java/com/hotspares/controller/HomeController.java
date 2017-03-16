package com.hotspares.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hotspares.model.Product;
import com.hotspares.service.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;

	public HomeController() {
		//super();
		// TODO Auto-generated constructor stub
		System.out.println("inside controller");
	}
@RequestMapping("/")
	public String gotoHome()
	{
		return "index";
	}

@RequestMapping("/contactus")
public String contactus()
{
	return "contactus";
}
@RequestMapping("/aboutus")

public String aboutus()
{
	return "aboutus";
}


@RequestMapping("/index")
public String gotoHome1()
{
	return "index";
}
/*@RequestMapping("/index")
public ModelAndView gotoHome1()
{
	List<Product> ls=productService.getList();
	return new ModelAndView("index","plist",ls);
}*/

@RequestMapping("/cart")
public String gotocart()
{
	return "cart";
}


@RequestMapping("/viewProducts")
public String listproducts()
{
	return "viewProducts";
}

//signin?error, signin?logout, signin
@RequestMapping("/signin")
public String signin(@RequestParam(value="error",required=false) String error,
		@RequestParam(value="logout",required=false) String logout,
		Model model){
	if(error!=null)
		model.addAttribute("error","Invalid Username And Password");
	if(logout!=null)
		model.addAttribute("logout","Loggedout successfully..");
	return "signin";
}
/*@RequestMapping("/signup")
public String signup()
{
	return "signup";
}*/
@RequestMapping("/user")
public String userList()
{
	return "listUsers";
}


@RequestMapping(value="loginCheck",method=RequestMethod.POST)
public void validateLogin(HttpServletRequest request,HttpServletRequest response,ServletRequest req,ServletResponse res)throws ServletException,IOException
{
 String u=request.getParameter("username");
 String p=request.getParameter("password");
  LoginCredential obj=new LoginCredential();
   obj.setUname(u); 
   obj.setPasswd(p);
  
   if(obj.checkLogin())
   {
    RequestDispatcher dispatch=request.getRequestDispatcher("index");
    dispatch.forward(req, res);
   }
   else
   {
    RequestDispatcher dispatch=request.getRequestDispatcher("signin");
    dispatch.forward(req, res);
   }

}
}
