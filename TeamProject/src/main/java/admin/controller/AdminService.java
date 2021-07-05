package admin.controller;

import java.util.List;

import admin.bean.usersDTO;

public interface AdminService {
	public List<usersDTO> getusersList();

	public int getUserTotal();

	public usersDTO getuserInfo(int sno);

	public List<usersDTO> getusersList(int startNum, int endNum);
	
}
