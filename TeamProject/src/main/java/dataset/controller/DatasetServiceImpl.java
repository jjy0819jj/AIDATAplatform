package dataset.controller;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dataset.bean.dataDTO;
import dataset.bean.datasetDTO;
import dataset.dao.datasetDAO;

@Service
public class DatasetServiceImpl implements DatasetService{

	@Autowired
	private datasetDAO dao;
	@Override
	public List<datasetDTO> getDatasetList(int startNum, int endNum) {
		return dao.getDatasetList(startNum, endNum);
	}
	@Override
	public int getDatasetTotal() {
		return dao.getDatasetTotal();
	}
	@Override
	public int dataSetInsert(datasetDTO datasetDTO) {
		return dao.dataSetInsert(datasetDTO);
	}
	@Override
	public int dataInsert(dataDTO dataDTO) {
		return dao.dataInsert(dataDTO);
	}
	@Override
	public datasetDTO getdatasetInfo(int dno) {
		return dao.getdatasetInfo(dno);
	}
	@Override
	public List<dataDTO> getdataList(Map<String, Integer> map) {
		return dao.getdataList(map);
	}
	@Override
	public int dataInspect(int datano, int inspect_Num, int session_no) {
		return dao.dataInspect(datano, inspect_Num, session_no);
	}
	@Override
	public List<Map<String, Integer>> getdataCnt(int dno) {
		return dao.getdataCnt(dno);
	}
}
