package com.hotspares.controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

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
@RequestMapping("/signin")
public String signin()
{
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
