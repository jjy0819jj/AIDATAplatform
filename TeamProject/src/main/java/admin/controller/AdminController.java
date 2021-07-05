package admin.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.usersDTO;
import dataset.bean.dataDTO;
import dataset.bean.datasetDTO;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService service;
	
	@RequestMapping(value="userList.do")
	public ModelAndView userList(HttpServletRequest request) {
		String str_pg = request.getParameter("pg");
		int pg = 1;
		if (str_pg != null) {
			if (!str_pg.equals("")) {
				if (str_pg.matches("^[0-9]*$")) {
					pg = Integer.parseInt(str_pg);
				}
			}
		}
		int endNum = pg * 10;
		int startNum = endNum - 9;
		List<usersDTO> usersList = service.getusersList(startNum, endNum);
		int totalA = service.getUserTotal();  
		int totalP = (totalA + 9) / 10;
		
		int startPage = (pg-1)/3*3 + 1;
		int endPage = startPage + 2;
		if(endPage > totalP) endPage = totalP;
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("pg",pg);
		mv.addObject("nav", "userList");
		mv.addObject("usersList",usersList);
		mv.addObject("totalP",totalP);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.setViewName("userList.jsp");
		return mv;
	}
	
	@RequestMapping(value="userUpload.do")
	public ModelAndView userUpload(HttpServletRequest request) {
		int pg = 1;
		int endNum = pg * 10;
		int startNum = endNum - 9;
		List<usersDTO> usersList = service.getusersList();
		int totalA = service.getUserTotal();  
		int totalP = (totalA + 9) / 10;
		
		int startPage = (pg-1)/3*3 + 1;
		int endPage = startPage + 2;
		if(endPage > totalP) endPage = totalP;
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("pg", pg);
		mv.addObject("nav", "userList");
		mv.addObject("usersList",usersList);
		mv.addObject("totalP",totalP);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.setViewName("userInsert.jsp");
		return mv;
	}
	
	@RequestMapping(value="getuserInfo.do")
	public ModelAndView getuserInfo(HttpServletRequest request) {
		int sno = Integer.parseInt(request.getParameter("sno"));
		usersDTO userInfo = service.getuserInfo(sno);
		ModelAndView mv = new ModelAndView();
		mv.addObject("userInfo", userInfo);
		mv.setViewName("jsonView");
		return mv;
	}
	
	/*
	@RequestMapping(value="admin.do")
	public ModelAndView coronaInsert(HttpServletRequest request) {

		SimpleDateFormat format = new SimpleDateFormat ("yyyy-MM-dd");
		Date now = new Date();
		String nowFormat = format.format(now);
		int totalAvg = service.totalAvg(nowFormat, nowFormat);
		int seoulAvg = service.selectAvg("서울_%");
		int incheonAvg = service.selectAvg("인천_%");
		int gyeonggiAvg = service.selectAvg("경기_%");
		int busanAvg = service.selectAvg("부산_%");
		int daejeonAvg = service.selectAvg("대전_%");
		int ulsanAvg = service.selectAvg("울산_%");
		int daeguAvg = service.selectAvg("대구_%");
		int gwangjuAvg = service.selectAvg("광주_%");
		coronaAvgDTO dto = 
				new coronaAvgDTO(nowFormat,totalAvg,seoulAvg,incheonAvg,gyeonggiAvg,busanAvg,daejeonAvg,ulsanAvg,daeguAvg,gwangjuAvg);
		int su = service.insertCoronaAvg(dto);
		ModelAndView mv = new ModelAndView();
		mv.addObject("su",su);
		mv.setViewName("admin.jsp");
		return mv;
	}
	
	@RequestMapping(value="statistics1.do")
	public ModelAndView statistics1(HttpServletRequest request) {
		SimpleDateFormat format = new SimpleDateFormat ("yyyy-MM-dd");
		int range = Integer.parseInt(request.getParameter("rg"));
		
		Date time = new Date();
		
		if(range==1) time = new Date(time.getTime() - (long)(( 1000 * 60 * 60 * 24 ) * 1));
		else if(range==2) time = new Date(time.getTime() - (long)(( 1000 * 60 * 60 * 24 ) * 7));
		else time = new Date(time.getTime() - (long)(( 1000 * 60 * 60 * 24 ) * 12));
		String startDate = format.format(time);
		
		time = new Date();
		time = new Date(time.getTime() - (long)(( 1000 * 60 * 60 * 24 ) * 1));
		String endDate = format.format(time);
		
		int totalAvg = boardService.totalAvg(startDate, endDate);
		int totalData = boardService.totalData(startDate, endDate);
		
		coronaDTO seoul = new coronaDTO();
		coronaDTO busan = new coronaDTO();
		coronaDTO gwangju = new coronaDTO();
		coronaDTO daegu = new coronaDTO();
		coronaDTO daejeon = new coronaDTO();
		coronaDTO ulsan = new coronaDTO();
		coronaDTO incheon = new coronaDTO();
		coronaDTO gyeonggi = new coronaDTO();
		int selectAvg = boardService.selectAvg("서울_%");
		seoul.setName("서울시");seoul.setDuration(selectAvg);seoul.setImg("seoul.jpg");
		selectAvg = boardService.selectAvg("부산_%");
		busan.setName("부산시");busan.setDuration(selectAvg);busan.setImg("busan.jpg");
		selectAvg = boardService.selectAvg("광주_%");
		gwangju.setName("광주시");gwangju.setDuration(selectAvg);gwangju.setImg("gwangju.jpg");
		selectAvg = boardService.selectAvg("대구_%");
		daegu.setName("대구시");daegu.setDuration(selectAvg);daegu.setImg("daegu.jpg");
		selectAvg = boardService.selectAvg("대전_%");
		daejeon.setName("대전시");daejeon.setDuration(selectAvg);daejeon.setImg("daejeon.jpg");
		selectAvg = boardService.selectAvg("울산_%");
		ulsan.setName("울산시");ulsan.setDuration(selectAvg);ulsan.setImg("ulsan.jpg");
		selectAvg = boardService.selectAvg("인천_%");
		incheon.setName("인천시");incheon.setDuration(selectAvg);incheon.setImg("incheon.jpg");
		selectAvg = boardService.selectAvg("경기_%");
		gyeonggi.setName("경기도");gyeonggi.setDuration(selectAvg);gyeonggi.setImg("gyeonggi.jpg");
		
		ArrayList<coronaDTO> coronalist = new ArrayList<coronaDTO>();
		coronalist.add(seoul);coronalist.add(busan);coronalist.add(gwangju);coronalist.add(daegu);
		coronalist.add(daejeon);coronalist.add(ulsan);coronalist.add(incheon);coronalist.add(gyeonggi);
		Collections.sort(coronalist, new DurationComparator());
		
		System.out.println(coronalist);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("rg",range);
		mv.addObject("totalAvg",totalAvg);
		mv.addObject("totalData",totalData);
		mv.addObject("list",coronalist);
		mv.setViewName("statistics1.jsp");
		return mv;
	}
	*/
/*
	@RequestMapping(value="index.do")
	public ModelAndView index(HttpServletRequest request) {
		
		int pg = 1;
		int endNum = pg * 5;
		int startNum = endNum - 4;
		List<NoticeDTO> notice = boardService.noticeList();
		List<BoardDTO> list = boardService.boardList(startNum, endNum);
		int totalA = boardService.getTotalA();  
		int totalP = (totalA + 4) / 5;
		
		int startPage = (pg-1)/3*3 + 1;
		int endPage = startPage + 2;
		if(endPage > totalP) endPage = totalP;
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("pg",pg);
		mv.addObject("list",list);
		mv.addObject("notice",notice);
		mv.addObject("totalP",totalP);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.setViewName("index.jsp");
		return mv;
	}
	*/
	
	/*
	@RequestMapping(value ="boardWrite.do")
	public ModelAndView boardWrite(HttpServletRequest request) {
		HttpSession session = request.getSession();
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		String question = request.getParameter("question");
		String answer = "";
		String email = (String) session.getAttribute("email");
		String name = (String) session.getAttribute("name");
		// DB
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setName(name);
		boardDTO.setEmail(email);
		boardDTO.setQuestion(question);
		boardDTO.setAnswer(answer);
		
		//BoardDAO boardDAO = new BoardDAO();
		int su = boardService.boardWrite(boardDTO);
		ModelAndView mv = new ModelAndView();
		mv.addObject("su",su);
		mv.addObject("viewPoint", "board");
		mv.setViewName("index.do");
		return mv;
	}
	*/
}


