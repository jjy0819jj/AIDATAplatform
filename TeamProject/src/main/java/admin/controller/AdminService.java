package admin.controller;

import java.util.List;

import admin.bean.usersDTO;

public interface AdminService {
	public List<usersDTO> getusersList(int startNum, int endNum);

	public int getUserTotal();
	
}
