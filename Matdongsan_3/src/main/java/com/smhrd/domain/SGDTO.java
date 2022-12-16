package com.smhrd.domain;

public class SGDTO {
	
	int sg_no;
	int user_no;
	String sg_content;
	String sg_title;
	String sg_email;
	
	
	
	public SGDTO(int user_no, String sg_content, String sg_title, String sg_email) {
		super();
		this.user_no = user_no;
		this.sg_content = sg_content;
		this.sg_title = sg_title;
		this.sg_email = sg_email;
	}

	public SGDTO(int sg_no, int user_no, String sg_content, String sg_title, String sg_email) {
		super();
		this.sg_no = sg_no;
		this.user_no = user_no;
		this.sg_content = sg_content;
		this.sg_title = sg_title;
		this.sg_email = sg_email;
	}
	
	public SGDTO() {
		super();
	}
	
	
	public int getSg_no() {
		return sg_no;
	}
	public void setSg_no(int sg_no) {
		this.sg_no = sg_no;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getSg_content() {
		return sg_content;
	}
	public void setSg_content(String sg_content) {
		this.sg_content = sg_content;
	}
	public String getSg_title() {
		return sg_title;
	}
	public void setSg_title(String sg_title) {
		this.sg_title = sg_title;
	}
	public String getSg_email() {
		return sg_email;
	}
	public void setSg_email(String sg_email) {
		this.sg_email = sg_email;
	}
	
	

}
