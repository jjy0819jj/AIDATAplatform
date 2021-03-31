package admin.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.coronaAvgDTO;
import admin.dao.AdminDAO;
import main.dao.MainDAO;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDAO dao;
	

	@Override
	public int totalAvg(String startDate, String endDate) {
		return dao.totalAvg(startDate, endDate);
	}


	@Override
	public int selectAvg(String string) {
		return dao.selectAvg(string);
	}


	@Override
	public int insertCoronaAvg(coronaAvgDTO dto) {
		return dao.insertCoronaAvg(dto);
	}
}
