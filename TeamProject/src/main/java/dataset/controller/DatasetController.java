package dataset.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sound.sampled.AudioFormat;
import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.UnsupportedAudioFileException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.usersDTO;
import admin.controller.AdminService;
import dataset.bean.dataDTO;
import dataset.bean.datasetDTO;

@Controller
public class DatasetController {
	
	@Autowired
	private DatasetService service;
	@Autowired
	private AdminService UserService;
	
	@RequestMapping(value="inspect.do")
	public ModelAndView inspect(HttpServletRequest request) {
		
		int Session_no = Integer.parseInt(request.getParameter("Session_sno"));
		int dno = Integer.parseInt(request.getParameter("dno"));
		int datano = Integer.parseInt(request.getParameter("datano"));
		int inspect_Num = Integer.parseInt(request.getParameter("inspect_Num"));
		int su = service.dataInspect(datano, inspect_Num, Session_no);
		usersDTO userInfo = UserService.getuserInfo(Session_no);
		datasetDTO datasetDTO = service.getdatasetInfo(dno);
		List<Map<String, Integer>> cnt = service.getdataCnt(dno);
		Map<String, Integer> map = new HashMap<String, Integer>();
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("waiting", 0);
		mv.addObject("complete", 0);
		mv.addObject("companion", 0);
		
		for (int i=0; i<cnt.size(); i++) {
			map = cnt.get(i);
			if (map.get("status") == 0) {
				mv.addObject("waiting", map.get("cnt"));
			} else if (map.get("status") == 1) {
				mv.addObject("complete", map.get("cnt"));
			} else {
				mv.addObject("companion", map.get("cnt"));
			}
		}
		
		mv.addObject("userInfo",userInfo);
		mv.addObject("datasetDTO",datasetDTO);
		mv.setViewName("jsonView");
		return mv;
	}
	
	@RequestMapping(value="datasetList.do")
	public ModelAndView datasetList(HttpServletRequest request) {
		int pg = 1;
		int endNum = pg * 10;
		int startNum = endNum - 9;
		List<datasetDTO> datasetList = service.getDatasetList(startNum, endNum);
		int totalA = service.getDatasetTotal();  
		int totalP = (totalA + 9) / 10;
		
		int startPage = (pg-1)/3*3 + 1;
		int endPage = startPage + 2;
		if(endPage > totalP) endPage = totalP;
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("pg", pg);
		mv.addObject("nav", "datasetList");
		mv.addObject("datasetList",datasetList);
		mv.addObject("totalP",totalP);
		mv.addObject("startPage",startPage);
		mv.addObject("endPage",endPage);
		mv.setViewName("datasetList.jsp");
		return mv;
	}
	
	@RequestMapping(value="datasetInfo.do")
	public ModelAndView datasetInfo(HttpServletRequest request) {
		String Sdno = request.getParameter("dno");
		int dno = Integer.parseInt(Sdno);
		datasetDTO datasetDTO = service.getdatasetInfo(dno);
		List<dataDTO> dataList = service.getdataList(dno);
		ModelAndView mv = new ModelAndView();
		mv.addObject("nav", "datasetList");
		mv.addObject("vo", datasetDTO);
		mv.addObject("dataList", dataList);
		mv.setViewName("datasetInfo.jsp");
		return mv;
	}
	
	
	@RequestMapping(value="datasetLength.do")
	public ModelAndView datasetLength(HttpServletRequest request, MultipartFile uploadFile) throws ParseException {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		InputStream inputStream = null;
		
		try {
			inputStream = new BufferedInputStream(uploadFile.getInputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		AudioInputStream audioInputStream = null;
		
		try {
			audioInputStream = AudioSystem.getAudioInputStream(inputStream);
		} catch (UnsupportedAudioFileException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		AudioFormat format1 = audioInputStream.getFormat();
		long frames = audioInputStream.getFrameLength();
		double durationInSeconds = (frames+0.0) / format1.getFrameRate();
		String s = String.format("%06d", (int)durationInSeconds);
		DateFormat format = new SimpleDateFormat("HHmmss");
		DateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
		Date date = format.parse(s);
		String duration = timeFormat.format(date);
		long size = uploadFile.getSize()/1024;
		

		ModelAndView mv = new ModelAndView();
		mv.addObject("duration", duration);
		mv.addObject("size", size);
		mv.setViewName("jsonView");
		return mv;
	}
	
	@RequestMapping(value="dataLength.do")
	public ModelAndView dataLength(HttpServletRequest request, MultipartFile[] uploadDatas) throws ParseException, UnsupportedEncodingException {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		InputStream inputStream = null;
		AudioInputStream audioInputStream = null;
		List<dataDTO> dataList = new ArrayList<dataDTO>();
		for(int i=0; i<uploadDatas.length; i++) {
			try {
				inputStream = new BufferedInputStream(uploadDatas[i].getInputStream());
			} catch (IOException e) {
				e.printStackTrace();
			}
			try {
				audioInputStream = AudioSystem.getAudioInputStream(inputStream);
			} catch (UnsupportedAudioFileException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			AudioFormat format1 = audioInputStream.getFormat();
			long frames = audioInputStream.getFrameLength();
			double durationInSeconds = (frames+0.0) / format1.getFrameRate();
			String s = String.format("%06d", (int)durationInSeconds);
			DateFormat format = new SimpleDateFormat("HHmmss");
			DateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
			Date date = format.parse(s);
			String duration = timeFormat.format(date);
			long size = uploadDatas[i].getSize()/1024;
			String size2 = size + "KB";
			String dataName = new String(uploadDatas[i].getOriginalFilename().getBytes("8859_1"),"UTF-8");
			dataDTO dataDTO = new dataDTO();
			dataDTO.setFilename(dataName);dataDTO.setLength(duration);dataDTO.setSize(size2);
			dataList.add(dataDTO);
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("dataList", dataList);
		mv.setViewName("jsonView");
		return mv;
	}
	
	@RequestMapping(value="datasetInsert.do")
	public ModelAndView datasetInsert(HttpServletRequest request, MultipartFile uploadFile, MultipartFile[] uploadDatas) throws ParseException, UnsupportedEncodingException {
		//HttpSession session = request.getSession();
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		//int sno = (Integer) session.getAttribute("Session_sno");
		int sno = 38;
		int record = Integer.parseInt(request.getParameter("record"));
		int topic = Integer.parseInt(request.getParameter("topic"));
		int gender = Integer.parseInt(request.getParameter("gender"));
		int age = Integer.parseInt(request.getParameter("age"));
		String bigo = new String(request.getParameter("bigo").getBytes("8859_1"),"UTF-8");
		String size = request.getParameter("size");
		String length = request.getParameter("length");
		
		
		/* 데이터셋 */
		String datasetfilePath = "C:\\Users\\82109\\git\\AIDATAplatform\\TeamProject\\src\\main\\webapp\\resources\\dataSetFiles";
		String datasetfileName = new String(uploadFile.getOriginalFilename().getBytes("8859_1"),"UTF-8");
		File datasetFile = new File(datasetfilePath, datasetfileName);
		
		try {
			FileCopyUtils.copy(uploadFile.getInputStream(), new FileOutputStream(datasetFile));
		} catch (FileNotFoundException e1) {
			e1.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		
		String datafilePath = "C:\\Users\\82109\\git\\AIDATAplatform\\TeamProject\\src\\main\\webapp\\resources\\dataFiles";
		String datafileName = "";
		datasetDTO datasetDTO = new datasetDTO();
		datasetDTO.setSno(sno);datasetDTO.setFilename(datasetfileName);datasetDTO.setRecord(record);
		datasetDTO.setTopic(topic);datasetDTO.setGender(gender);datasetDTO.setAge(age);datasetDTO.setBigo(bigo);
		datasetDTO.setSize(size);datasetDTO.setLength(length);datasetDTO.setTotaldata(uploadDatas.length);
		
		int su = service.dataSetInsert(datasetDTO);
		int newDno = datasetDTO.getDno();
		
		/* 개별데이터 */
		AudioInputStream audioInputStream = null;
		for(int i=0; i<uploadDatas.length; i++) {
			datafileName = new String(uploadDatas[i].getOriginalFilename().getBytes("8859_1"),"UTF-8");
			File dataFile = new File(datafilePath, datafileName);
			
			try {
				FileCopyUtils.copy(uploadDatas[i].getInputStream(), new FileOutputStream(dataFile));
			} catch (FileNotFoundException e1) {
				e1.printStackTrace();
			} catch (IOException e1) {
				e1.printStackTrace();
			}

			try {
				audioInputStream = AudioSystem.getAudioInputStream(dataFile);
			} catch (UnsupportedAudioFileException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			AudioFormat format1 = audioInputStream.getFormat();
			long frames = audioInputStream.getFrameLength();
			double durationInSeconds = (frames+0.0) / format1.getFrameRate();
			String s = String.format("%06d", (int)durationInSeconds);
			DateFormat format = new SimpleDateFormat("HHmmss");
			DateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
			Date date = format.parse(s);
			String duration = timeFormat.format(date);
			long size1 = uploadDatas[i].getSize()/1024;
			String size2 = size1 + "KB";
			dataDTO dataDTO = new dataDTO();
			dataDTO.setDno(newDno);dataDTO.setFilename(datafileName);dataDTO.setLength(duration);dataDTO.setSize(size2);
			int su2 = service.dataInsert(dataDTO);
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("datasetList.do");
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


