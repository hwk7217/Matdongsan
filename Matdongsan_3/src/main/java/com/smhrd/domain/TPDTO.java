package com.smhrd.domain;

public class TPDTO {
	
	int tp_no;
	String tp_name;
	String tp_addr;
	String tp_addr2;
	int tp_area;
	int tp_price_2019;
	int tp_count_2019;
	int tp_price_2020;
	int tp_count_2020;		
	int tp_price_2021;
	int tp_count_2021;
	
	public TPDTO(int tp_no, String tp_name, String tp_addr, String tp_addr2, int tp_area, int tp_price_2019,
			int tp_count_2019, int tp_price_2020, int tp_count_2020, int tp_price_2021, int tp_count_2021) {
		super();
		this.tp_no = tp_no;
		this.tp_name = tp_name;
		this.tp_addr = tp_addr;
		this.tp_addr2 = tp_addr2;
		this.tp_area = tp_area;
		this.tp_price_2019 = tp_price_2019;
		this.tp_count_2019 = tp_count_2019;
		this.tp_price_2020 = tp_price_2020;
		this.tp_count_2020 = tp_count_2020;
		this.tp_price_2021 = tp_price_2021;
		this.tp_count_2021 = tp_count_2021;
	}

	public TPDTO() {
		super();
	}

	public TPDTO(String tp_addr, String tp_addr2, int tp_area) {
		super();
		this.tp_addr = tp_addr;
		this.tp_addr2 = tp_addr2;
		this.tp_area = tp_area;
	}

	public int getTp_no() {
		return tp_no;
	}

	public void setTp_no(int tp_no) {
		this.tp_no = tp_no;
	}

	public String getTp_name() {
		return tp_name;
	}

	public void setTp_name(String tp_name) {
		this.tp_name = tp_name;
	}

	public String getTp_addr() {
		return tp_addr;
	}

	public void setTp_addr(String tp_addr) {
		this.tp_addr = tp_addr;
	}

	public String getTp_addr2() {
		return tp_addr2;
	}

	public void setTp_addr2(String tp_addr2) {
		this.tp_addr2 = tp_addr2;
	}

	public int getTp_area() {
		return tp_area;
	}

	public void setTp_area(int tp_area) {
		this.tp_area = tp_area;
	}

	public int getTp_price_2019() {
		return tp_price_2019;
	}

	public void setTp_price_2019(int tp_price_2019) {
		this.tp_price_2019 = tp_price_2019;
	}

	public int getTp_count_2019() {
		return tp_count_2019;
	}

	public void setTp_count_2019(int tp_count_2019) {
		this.tp_count_2019 = tp_count_2019;
	}

	public int getTp_price_2020() {
		return tp_price_2020;
	}

	public void setTp_price_2020(int tp_price_2020) {
		this.tp_price_2020 = tp_price_2020;
	}

	public int getTp_count_2020() {
		return tp_count_2020;
	}

	public void setTp_count_2020(int tp_count_2020) {
		this.tp_count_2020 = tp_count_2020;
	}

	public int getTp_price_2021() {
		return tp_price_2021;
	}

	public void setTp_price_2021(int tp_price_2021) {
		this.tp_price_2021 = tp_price_2021;
	}

	public int getTp_count_2021() {
		return tp_count_2021;
	}

	public void setTp_count_2021(int tp_count_2021) {
		this.tp_count_2021 = tp_count_2021;
	}
	
	
	
	
	
}
