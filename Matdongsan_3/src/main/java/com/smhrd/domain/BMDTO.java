package com.smhrd.domain;

public class BMDTO {
	
	int bm_no;
	int user_no;
	int apt_no;
	String apt_name;
	String apt_area;
	String apt_price;
	
	public BMDTO(int bm_no, int user_no, int apt_no, String apt_name, String apt_area, String apt_price) {
		super();
		this.bm_no = bm_no;
		this.user_no = user_no;
		this.apt_no = apt_no;
		this.apt_name = apt_name;
		this.apt_area = apt_area;
		this.apt_price = apt_price;
	}

	public BMDTO(int user_no, int apt_no, String apt_name, String apt_area, String apt_price) {
		super();
		this.user_no = user_no;
		this.apt_no = apt_no;
		this.apt_name = apt_name;
		this.apt_area = apt_area;
		this.apt_price = apt_price;
	}

	public BMDTO() {
		super();
	}

	public int getBm_no() {
		return bm_no;
	}

	public void setBm_no(int bm_no) {
		this.bm_no = bm_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getApt_no() {
		return apt_no;
	}

	public void setApt_no(int apt_no) {
		this.apt_no = apt_no;
	}

	public String getApt_name() {
		return apt_name;
	}

	public void setApt_name(String apt_name) {
		this.apt_name = apt_name;
	}

	public String getApt_area() {
		return apt_area;
	}

	public void setApt_area(String apt_area) {
		this.apt_area = apt_area;
	}

	public String getApt_price() {
		return apt_price;
	}

	public void setApt_price(String apt_price) {
		this.apt_price = apt_price;
	}
	
	

	
}
