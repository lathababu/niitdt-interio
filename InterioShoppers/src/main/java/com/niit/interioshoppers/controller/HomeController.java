package com.niit.interioshoppers.controller;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.interioshoppers.model.Product;
import com.niit.interioshoppers.model.User;
import com.niit.interioshoppers.service.ProductService;
import com.niit.interioshoppers.service.UserService;

@Controller
public class HomeController {

	@Autowired
	private UserService user_service;
	
	@Autowired
	private ProductService product_service;

	@RequestMapping("/")
	public String defaultindex()
	{
		System.out.println("index Controller");
		return "index";
	}
	
	@RequestMapping("/index")
	public String index()
	{
		System.out.println("index Controller");
		return "index";
	}
	
	/*@RequestMapping("/login")
	public String login()
	{
		System.out.println("login controller");
		return "login";
	}*/
	
	//Spring Security see this :
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public ModelAndView login(
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

			ModelAndView model = new ModelAndView();
			if (error != null) {
				model.addObject("error", "Invalid username and password!");
			}

			if (logout != null) {
				model.addObject("msg", "You've been logged out successfully.");
			}
			model.setViewName("login");

			return model;

		}

	
	@RequestMapping("/productlist")
	public String productlist()
	{
		System.out.println("productlist controller");
		return "productlist";
	}
	
	@RequestMapping("/showproduct")
	public String showproduct(Model model) {
		model.addAttribute("showProduct",this.product_service.getList());
		model.addAttribute("path","Resources\\Images\\");
		return "showproduct";
	}
	
	@RequestMapping("/contact")
	public String contact()
	{
		System.out.println("contact controller");
		return "contact";
	}
	
	@RequestMapping("/about")
	public String about()
	{
		System.out.println("about controller");
		return "about";
	}
	

	
	@RequestMapping(value="/adminlist",method=RequestMethod.GET)
	public String prodlist(Model model)
	{
	
		System.out.println("Admin Product/User List Controller");
	    model.addAttribute("product",new Product());
		model.addAttribute("listProduct",this.product_service.getList());
		model.addAttribute("user",new User());
		model.addAttribute("listUser",this.user_service.getList());
		return "adminlist";
	}

	@RequestMapping("/update")
	public String update()
	{
		System.out.println("updatecontroller");
		return "update";
	}
	
	@RequestMapping(value="/editprod/{pid}")
	public ModelAndView update(@PathVariable int pid) {
		Product product=this.product_service.getProductById(pid);
		return new ModelAndView("update","command",product);
	}
	
	
@RequestMapping(value="/updateProd",method=RequestMethod.POST)
	public ModelAndView upd(@ModelAttribute("product")Product product) {
		
		product_service.updateProduct(product);
		return new ModelAndView("redirect:/adminlist");
	}

@RequestMapping(value="/deleteprod/{pid}")  
public String delete(@PathVariable(value="pid") int pid){  
	product_service.removeProduct(pid);
    return "redirect:/adminlist";
}  

	//!-----------Registration Controller-----------!//
	
	@RequestMapping("/register")
	public String register()
	{
		System.out.println("register controller");
		return "register";
	}
	
	@ModelAttribute("customer")
	public User getUser(){
		return new User();
	}
	
	@RequestMapping(value="/registration",method=RequestMethod.POST)
	public ModelAndView registration(@ModelAttribute("customer") User user, BindingResult Result)
	{
		try
		{
			user_service.addUser(user);
		}
		catch(Exception e)
		{
			
		}
		if(Result.hasErrors()){
			return new ModelAndView("/register");
		}
		else
		{
			return new ModelAndView("/login");
		}
	}
		
	//!------------Product controller-------!//
	

	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public ModelAndView admin()
	{
		System.out.println("admin controller");
		ModelAndView model=new ModelAndView();
		model.addObject("message","This is Admin Page");
		model.setViewName("admin");
		return model;
	}
		
	@ModelAttribute("saveProduct")
		public Product getProduct()
	{
		return new Product();
	}
	
	@RequestMapping(value="/addProd",method=RequestMethod.POST)
	public ModelAndView addProd(@ModelAttribute("saveProduct") Product product,BindingResult Result)
	{
		try
		{
			System.out.println("result data");
		  product_service.addProduct(product);
		}
		catch(Exception e)
		{
			
		}
		if(Result.hasErrors())
		{
		  return new ModelAndView("/index");
		}
		else
		{
			return new ModelAndView("/admin");
		}
	}
	
	
	
	//!-----------File Upload Controller---------!//
	
	@RequestMapping(value="/fileUpload",method=RequestMethod.POST)
	public String save(@RequestParam("prodimage")MultipartFile prodimage,@RequestParam("prodname")String prodname)
	{
		if(!prodimage.isEmpty())
		{
			try
			{
				byte[] bytes=prodimage.getBytes();
				File dir=new File("D:\\InterioShoppers\\src\\webapp\\Resources\\Images");
				if(!dir.exists())
					dir.mkdirs();
				File serverFile=new File(dir.getAbsolutePath()+File.separator+prodname+".jsp");
				BufferedOutputStream stream=new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				System.out.println("Successfully Uploaded "+dir+" "+prodname);
			}
			catch(Exception e)
			{
				System.out.println("Failed to Upload "+prodname+" "+e.getMessage());
			}
		}
		return "admin";
	}
	
}
