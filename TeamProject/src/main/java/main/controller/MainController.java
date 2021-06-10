package main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.usersDTO;
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
	
	@RequestMapping(value="login.do")
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		ModelAndView mv = new ModelAndView();
		usersDTO userInfo = service.login(id, pwd);
		if (userInfo == null) {
			mv.setViewName("login.jsp");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("Session_sno", userInfo.getSno());
			session.setAttribute("Session_id", userInfo.getId());
			session.setAttribute("Session_name", userInfo.getName());
			session.setAttribute("Session_rank", userInfo.getRank());
			mv.setViewName("index.jsp");			
		}
		return mv;
	}
	
	@RequestMapping(value="logout.do")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login.jsp");
		return mv;
	}
	
	
	/*
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
	*/
}


