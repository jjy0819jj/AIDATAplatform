package statistic.controller;

import java.util.List;

import statistic.bean.CommentDTO;
import statistic.bean.statisticDTO;

public interface StatisticService {
	public int totalAvg(String startDate, String endDate);
	public List<statisticDTO> getAvgRank(String category, String startDate, String endDate);
	public int commentWrite(CommentDTO dto);
	public List<CommentDTO> getCommentList(int cg);
	
}
