package com.laptrinhjavaweb.controller;

import javax.xml.ws.RequestWrapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.service.CustomerObjectForm;
import com.laptrinhjavaweb.service.HomeService;

@Controller
public class HomeController {

	@Autowired
	private HomeService homeService;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage() {
		// return request trang chu la home.jsp
		ModelAndView mav = new ModelAndView("home");
		// add chuoi menu de xu ly loop menu, xu dung jstl de load menu nay vao jsp
		mav.addObject("menu", homeService.loadMenu());
		return mav;
	}
	
	@RequestMapping(value = "/spring-mvc", method = RequestMethod.GET)
	public ModelAndView springPage() {
		ModelAndView mav = new ModelAndView("springmvc");
		mav.addObject("menu", homeService.loadMenu());
		return mav;
	}
	
	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView customerPage() {
		ModelAndView mav = new ModelAndView("customer");
		return mav;
	}
	
	@RequestMapping(value = "/addCustomer")
	public String addCustomer(@ModelAttribute("customerObject") CustomerObjectForm customerObject, Model model) {
		System.out.println("Check add customer");
		model.addAttribute("customerObject", customerObject);
		return "addCustomer";
	}
	@RequestMapping(value = "/showCustomer")
	public String showCustomer(@ModelAttribute("customerObject") CustomerObjectForm customerObject, Model model) {
		System.out.println("Check show customer");
		System.out.println("Name:"+customerObject.getName());
		model.addAttribute("customerObject", customerObject);
		return "showCustomer";
	}
}
