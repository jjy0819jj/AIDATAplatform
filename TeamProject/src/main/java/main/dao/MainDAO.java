package main.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MainDAO {
	@Autowired
    private SqlSessionTemplate sqlSession;
	
	public String totalPlay() {
		return sqlSession.selectOne("main.getTotalPlay");
	}

	public String totalError() {
		return sqlSession.selectOne("main.getTotalError");
	}

	public int totalAvg(String startDate, String endDate) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		return sqlSession.selectOne("main.getTotalAvg", map);
	}

	public int totalData(String startDate, String endDate) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		return sqlSession.selectOne("main.getTotalData", map);
	}

	public int selectAvg(String string) {
		return sqlSession.selectOne("main.getSelectAvg", string);
	}
	
}
