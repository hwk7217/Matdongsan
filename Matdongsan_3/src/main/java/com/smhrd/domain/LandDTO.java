package com.smhrd.domain;

public class LandDTO {
	
	private int apt_no;
	private String apt_name;
	private String apt_price;
	private int apt_price2;
	private String apt_addr;
	private String apt_addr2;
	private String apt_info;
	private String apt_char;
	private String apt_geo;
	private String apt_ex;
	
	private String apt_area;
	private int apt_area2;
	

	public LandDTO() {
		super();
	}	
	
	
	public LandDTO(int apt_no) {
		super();
		this.apt_no = apt_no;
	}


	public LandDTO(int apt_no, String apt_name, String apt_price, int apt_price2, String apt_addr, String apt_addr2,
			String apt_info, String apt_char, String apt_geo, String apt_ex, String apt_area, int apt_area2) {
		super();
		this.apt_no = apt_no;
		this.apt_name = apt_name;
		this.apt_price = apt_price;
		this.apt_price2 = apt_price2;
		this.apt_addr = apt_addr;
		this.apt_addr2 = apt_addr2;
		this.apt_info = apt_info;
		this.apt_char = apt_char;
		this.apt_geo = apt_geo;
		this.apt_ex = apt_ex;
		this.apt_area = apt_area;
		this.apt_area2 = apt_area2;
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


	public String getApt_price() {
		return apt_price;
	}


	public void setApt_price(String apt_price) {
		this.apt_price = apt_price;
	}


	public int getApt_price2() {
		return apt_price2;
	}


	public void setApt_price2(int apt_price2) {
		this.apt_price2 = apt_price2;
	}


	public String getApt_addr() {
		return apt_addr;
	}


	public void setApt_addr(String apt_addr) {
		this.apt_addr = apt_addr;
	}


	public String getApt_addr2() {
		return apt_addr2;
	}


	public void setApt_addr2(String apt_addr2) {
		this.apt_addr2 = apt_addr2;
	}


	public String getApt_info() {
		return apt_info;
	}


	public void setApt_info(String apt_info) {
		this.apt_info = apt_info;
	}


	public String getApt_char() {
		return apt_char;
	}


	public void setApt_char(String apt_char) {
		this.apt_char = apt_char;
	}


	public String getApt_geo() {
		return apt_geo;
	}


	public void setApt_geo(String apt_geo) {
		this.apt_geo = apt_geo;
	}


	public String getApt_ex() {
		return apt_ex;
	}


	public void setApt_ex(String apt_ex) {
		this.apt_ex = apt_ex;
	}


	public String getApt_area() {
		return apt_area;
	}


	public void setApt_area(String apt_area) {
		this.apt_area = apt_area;
	}


	public int getApt_area2() {
		return apt_area2;
	}


	public void setApt_area2(int apt_area2) {
		this.apt_area2 = apt_area2;
	}
	
	

	
	
}