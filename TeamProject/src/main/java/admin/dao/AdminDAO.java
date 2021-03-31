package admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import admin.bean.coronaAvgDTO;


@Repository
public class AdminDAO {
	@Autowired
    private SqlSessionTemplate sqlSession;
	

	public int totalAvg(String startDate, String endDate) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		return sqlSession.selectOne("admin.getTotalAvg", map);
	}

	public int selectAvg(String string) {
		return sqlSession.selectOne("admin.getSelectAvg", string);
	}

	public int insertCoronaAvg(coronaAvgDTO dto) {
		return sqlSession.insert("admin.insertCoronaAvg", dto);
	}
	
}
