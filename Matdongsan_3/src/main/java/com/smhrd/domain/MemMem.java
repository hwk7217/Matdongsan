package com.smhrd.domain;

public class MemMem {
	private int user_no;
	private String user_id;
	private String user_pw;
	private String user_email;
	public MemMem(String user_id, String user_email) {
		super();
		this.user_id = user_id;
		this.user_email = user_email;
	}
	
	public MemMem() {
		super();
	}

	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	
	

}
