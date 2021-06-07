package main.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class MainController {
	
	@Autowired
	private MainService service;
	
	@RequestMapping(value="index.do")
	public ModelAndView index(HttpServletRequest request) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		return mv;
	}
	
	@RequestMapping(value="dashboard.do")
	public ModelAndView dashboard(HttpServletRequest request) {
		System.out.println(request.getHeader("user-agent"));
		int cg = Integer.parseInt(request.getParameter("cg"));
		boolean isMobile;
		String ua = request.getHeader("user-agent");
		  if (ua.indexOf("iPhone") != -1 || 
		   ua.indexOf("iPad") != -1 || 
		   ua.indexOf("Android") != -1  || 
		   ua.indexOf("BlackBerry") != -1  || 
		   ua.indexOf("symbian") != -1  || 
		   ua.indexOf("sony") != -1  ||
		   ua.indexOf("Mobile") != -1 ) {
			  isMobile = true;
		  } else {
			  isMobile = false;
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("cg",cg);
		mv.addObject("isMobile",isMobile);
		mv.setViewName("dashboard.jsp");
		return mv;
	}
}


