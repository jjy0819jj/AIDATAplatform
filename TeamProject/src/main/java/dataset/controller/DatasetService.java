package dataset.controller;

import java.util.List;
import java.util.Map;

import admin.bean.usersDTO;
import dataset.bean.dataDTO;
import dataset.bean.datasetDTO;

public interface DatasetService {

	public List<datasetDTO> getDatasetList(int startNum, int endNum);

	public int getDatasetTotal();

	public int dataSetInsert(datasetDTO datasetDTO);

	public int dataInsert(dataDTO dataDTO);

	public datasetDTO getdatasetInfo(int dno);

	public List<dataDTO> getdataList(Map<String, Integer> map);

	public int dataInspect(int datano, int inspect_Num, int session_no);

	public List<Map<String, Integer>> getdataCnt(int dno);
	
}
