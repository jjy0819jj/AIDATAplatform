package statistic.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import statistic.bean.CommentDTO;
import statistic.bean.statisticDTO;


@Repository
public class StatisticDAO {
	@Autowired
    private SqlSessionTemplate sqlSession;
	
	public List<statisticDTO> getAvgRank(String category, String startDate, String endDate) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("category", category);
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		return sqlSession.selectList("statistic.getAvgRank", map);
	}

	public int totalAvg(String startDate, String endDate) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		return sqlSession.selectOne("statistic.getCoronaAvg", map);
	}

	public int commentWrite(CommentDTO dto) {
		return sqlSession.insert("statistic.commentInsert", dto);
	}

	public List<CommentDTO> getCommentList(int cg) {
		return sqlSession.selectList("statistic.getCommentList", cg);
	}
	
}
