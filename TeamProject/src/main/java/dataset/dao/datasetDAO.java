package dataset.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import admin.bean.usersDTO;
import dataset.bean.dataDTO;
import dataset.bean.datasetDTO;


@Repository
public class datasetDAO {
	@Autowired
    private SqlSessionTemplate sqlSession;

	public List<datasetDTO> getDatasetList(int startNum, int endNum) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSession.selectList("dataset.getDatasetList", map);
	}

	public int getDatasetTotal() {
		return sqlSession.selectOne("dataset.getDatasetTotal");
	}

	public int dataSetInsert(datasetDTO datasetDTO) {
		return sqlSession.insert("dataset.dataSetInsert", datasetDTO);
	}

	public int dataInsert(dataDTO dataDTO) {
		return sqlSession.insert("dataset.dataInsert", dataDTO);
	}

	public datasetDTO getdatasetInfo(int dno) {
		return sqlSession.selectOne("dataset.getdatasetInfo", dno);
	}

	public List<dataDTO> getdataList(int dno) {
		return sqlSession.selectList("dataset.getdataList", dno);
	}

	public int dataInspect(int datano, int inspect_Num, int session_no) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("datano", datano);
		map.put("inspect_Num", inspect_Num);
		if (inspect_Num == 0) map.put("session_no", null);
		else map.put("session_no", session_no);
		
		return sqlSession.update("dataset.dataInspect", map);
	}

	public List<Map<String, Integer>> getdataCnt(int dno) {
		return sqlSession.selectList("dataset.getdataCnt", dno);
	}
	
}
