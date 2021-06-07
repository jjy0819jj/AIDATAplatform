package admin.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.usersDTO;
import admin.dao.AdminDAO;
import main.dao.MainDAO;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDAO dao;

	@Override
	public List<usersDTO> getusersList(int startNum, int endNum) {
		return dao.getusersList(startNum, endNum);
	}


	@Override
	public int getUserTotal() {
		return dao.getUserTotal();
	}
}
