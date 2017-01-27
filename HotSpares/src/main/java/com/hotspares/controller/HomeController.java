package com.hotspares.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
public String gotoHome1()
{
	return "contactus";
}
@RequestMapping("/aboutus")

public String gotoHome2()
{
	return "aboutus";
}

@RequestMapping("/index")
public String gotoHome3()
{
	return "index";
}
@RequestMapping("/signin")
public String gotoHome4()
{
	return "signin";
}


}
