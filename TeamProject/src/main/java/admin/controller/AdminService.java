package admin.controller;

import java.util.List;

import admin.bean.coronaAvgDTO;

public interface AdminService {

	public int totalAvg(String startDate, String endDate);

	public int selectAvg(String string);

	public int insertCoronaAvg(coronaAvgDTO dto);
	
}
