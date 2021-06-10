package main.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.usersDTO;
import main.dao.MainDAO;

@Service
public class MainServiceImpl implements MainService{

	@Autowired
	private MainDAO mainDAO;
	
	@Override
	public String totalPlay() {
		return mainDAO.totalPlay();
	}

	@Override
	public String totalError() {
		return mainDAO.totalError();
	}

	@Override
	public int totalAvg(String startDate, String endDate) {
		return mainDAO.totalAvg(startDate, endDate);
	}

	@Override
	public int totalData(String startDate, String endDate) {
		return mainDAO.totalData(startDate, endDate);
	}

	@Override
	public int selectAvg(String string) {
		return mainDAO.selectAvg(string);
	}

	@Override
	public usersDTO login(String id, String pwd) {
		return null;
	}
}
