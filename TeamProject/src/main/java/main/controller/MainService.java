package main.controller;

import java.util.List;

public interface MainService {

	public String totalPlay();

	public String totalError();

	public int totalAvg(String startDate, String endDate);

	public int totalData(String startDate, String endDate);

	public int selectAvg(String string);
	
}
