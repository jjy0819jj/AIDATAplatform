package admin.bean;

public class coronaAvgDTO {
	String keydate;
	int total_avg;
	int seoul_avg;
	int gyeonggi_avg;
	int incheon_avg;
	int busan_avg;
	int daejeon_avg;
	int daegu_avg;
	int ulsan_avg;
	int gwangju_avg;
	public String getKeydate() {
		return keydate;
	}
	public void setKeydate(String keydate) {
		this.keydate = keydate;
	}
	public int getTotal_avg() {
		return total_avg;
	}
	public void setTotal_avg(int total_avg) {
		this.total_avg = total_avg;
	}
	public int getSeoul_avg() {
		return seoul_avg;
	}
	public void setSeoul_avg(int seoul_avg) {
		this.seoul_avg = seoul_avg;
	}
	public int getGyeonggi_avg() {
		return gyeonggi_avg;
	}
	public void setGyeonggi_avg(int gyeonggi_avg) {
		this.gyeonggi_avg = gyeonggi_avg;
	}
	public int getIncheon_avg() {
		return incheon_avg;
	}
	public void setIncheon_avg(int incheon_avg) {
		this.incheon_avg = incheon_avg;
	}
	public int getBusan_avg() {
		return busan_avg;
	}
	public void setBusan_avg(int busan_avg) {
		this.busan_avg = busan_avg;
	}
	public int getDaejeon_avg() {
		return daejeon_avg;
	}
	public void setDaejeon_avg(int daejeon_avg) {
		this.daejeon_avg = daejeon_avg;
	}
	public int getDaegu_avg() {
		return daegu_avg;
	}
	public void setDaegu_avg(int daegu_avg) {
		this.daegu_avg = daegu_avg;
	}
	public int getUlsan_avg() {
		return ulsan_avg;
	}
	public void setUlsan_avg(int ulsan_avg) {
		this.ulsan_avg = ulsan_avg;
	}
	public int getGwangju_avg() {
		return gwangju_avg;
	}
	public void setGwangju_avg(int gwangju_avg) {
		this.gwangju_avg = gwangju_avg;
	}
	public coronaAvgDTO(String keydate, int total_avg, int seoul_avg, int gyeonggi_avg, int incheon_avg, int busan_avg,
			int daejeon_avg, int daegu_avg, int ulsan_avg, int gwangju_avg) {
		super();
		this.keydate = keydate;
		this.total_avg = total_avg;
		this.seoul_avg = seoul_avg;
		this.gyeonggi_avg = gyeonggi_avg;
		this.incheon_avg = incheon_avg;
		this.busan_avg = busan_avg;
		this.daejeon_avg = daejeon_avg;
		this.daegu_avg = daegu_avg;
		this.ulsan_avg = ulsan_avg;
		this.gwangju_avg = gwangju_avg;
	}

	

}
