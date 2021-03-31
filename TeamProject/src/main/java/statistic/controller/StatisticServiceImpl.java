package statistic.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import statistic.bean.CommentDTO;
import statistic.bean.statisticDTO;
import statistic.dao.StatisticDAO;

@Service
public class StatisticServiceImpl implements StatisticService{

	@Autowired
	private StatisticDAO dao;


	@Override
	public List<statisticDTO> getAvgRank(String category, String startDate, String endDate) {
		return dao.getAvgRank(category, startDate, endDate);
	}


	@Override
	public int totalAvg(String startDate, String endDate) {
		return dao.totalAvg(startDate, endDate);
	}


	@Override
	public int commentWrite(CommentDTO dto) {
		return dao.commentWrite(dto);
	}


	@Override
	public List<CommentDTO> getCommentList(int cg) {
		return dao.getCommentList(cg);
	}
}
