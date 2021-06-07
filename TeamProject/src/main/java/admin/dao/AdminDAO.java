package admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import admin.bean.usersDTO;


@Repository
public class AdminDAO {
	@Autowired
    private SqlSessionTemplate sqlSession;

	public List<usersDTO> getusersList(int startNum, int endNum) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSession.selectList("admin.getusersList", map);
	}

	public int getUserTotal() {
		return sqlSession.selectOne("getUserTotal");
	}
	
}
