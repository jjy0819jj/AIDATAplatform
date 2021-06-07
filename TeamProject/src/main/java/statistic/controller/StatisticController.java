package statistic.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import statistic.bean.CommentDTO;
import statistic.bean.statisticDTO;

@Controller
public class StatisticController {
	
	@Autowired
	private StatisticService service;
	
	@RequestMapping(value="statistics.do")
	public ModelAndView statistics(HttpServletRequest request) {
		SimpleDateFormat format = new SimpleDateFormat ("yyyy-MM-dd");
		int cg = Integer.parseInt(request.getParameter("cg"));
		int rg = Integer.parseInt(request.getParameter("rg"));
		/* 시간 */
		Date time = new Date();
		if(rg==1) time = new Date(time.getTime() - (long)(( 1000 * 60 * 60 * 24 ) * 1));
		else if(rg==2) time = new Date(time.getTime() - (long)(( 1000 * 60 * 60 * 24 ) * 7));
		else time = new Date(time.getTime() - (long)(( 1000 * 60 * 60 * 24 ) * 14));
		String startDate = format.format(time);
		time = new Date();
		time = new Date(time.getTime() - (long)(( 1000 * 60 * 60 * 24 ) * 1));
		String endDate = format.format(time);
		/* ----- */
		/* 카테고리 */
        String SQLcategory = "";
        String category = "";
        switch (cg) {
            case 1:  SQLcategory = "%코로나%";
            		category = "8개 지자체 코로나 캠페인";
                     break;
            case 2:  SQLcategory = "%IOS";
            		category = "6개 은행 앱";
                     break;
            default: category = "Invalid";
                     break;
        }
        /* ----- */
		int totalAvg = 0;
		List<statisticDTO> CoronaRanklist = service.getAvgRank(SQLcategory, startDate, endDate);
		for (int i=0; i<CoronaRanklist.size(); i++) {
			totalAvg = totalAvg + CoronaRanklist.get(i).getDuration();
		}
		totalAvg = totalAvg / CoronaRanklist.size(); 
		
		List<CommentDTO> Commentlist = service.getCommentList(cg);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("rg",rg);
		mv.addObject("cg",cg);
		mv.addObject("category",category);
		mv.addObject("totalAvg",totalAvg);
		mv.addObject("list",CoronaRanklist);
		mv.addObject("Commentlist",Commentlist);
		mv.setViewName("statistics.jsp");
		return mv;
	}
	
	@RequestMapping(value="statisticsComment.do")
	public ModelAndView statisticsComment(HttpServletRequest request) {
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		int category = Integer.parseInt(request.getParameter("category"));
		int rg = Integer.parseInt(request.getParameter("rg"));
		//int reply_level = Integer.parseInt(request.getParameter("reply_level"));
		//int reply_seq = Integer.parseInt(request.getParameter("reply_seq"));

		// DB
		CommentDTO dto = new CommentDTO();
		dto.setName(name);
		dto.setContent(content);
		dto.setCategory(category);
		
		//BoardDAO boardDAO = new BoardDAO();
		int su = service.commentWrite(dto);
		ModelAndView mv = new ModelAndView();
		mv.addObject("su",su);
		mv.addObject("cg",category);
		mv.setViewName("statistics.do?cg=" + category + "&rg=" + rg);
		return mv;
	}
	
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


