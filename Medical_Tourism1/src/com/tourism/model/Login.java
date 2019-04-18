package com.tourism.model;

public class Login {
	private String email;
	private String password;
	private String userType;
	private int userid;
	private int hospitalid;

	public Login() {

	}

	public Login(String email, String password, String userType, int userid) {
		this.email = email;
		this.password = password;
		this.userType = userType;
		this.userid = userid;
	}

	public Login(int hospitalid, String email, String password, String userType) {
		this.email = email;
		this.password = password;
		this.userType = userType;
		this.hospitalid = hospitalid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getHospitalid() {
		return hospitalid;
	}

	public void setHospitalid(int hospitalid) {
		this.hospitalid = hospitalid;
	}

}
