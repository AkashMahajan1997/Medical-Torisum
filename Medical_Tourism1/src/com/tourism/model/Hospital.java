package com.tourism.model;

public class Hospital {
	private int hospitalId;
	private String hospitalName;
	private String addressLine1;
	private String addressLine2;
	private String city;
	private String state;
	private int pin;
	private String certifications ;
	
	public Hospital() {

	}

	public Hospital(int hospitalId, String hospitalName, String addressLine1,
			String addressLine2, String city, String state, int pin, String certifications) {
		this.hospitalId = hospitalId;
		this.hospitalName = hospitalName;
		this.addressLine1 = addressLine1;
		this.addressLine2 = addressLine2;
		this.city = city;
		this.state = state;
		this.pin = pin;
		this.certifications = certifications;
	}

	public Hospital(String hospitalName, String addressLine1, String addressLine2, String city,
			String state, int pin, String certifications) {
		this.hospitalName = hospitalName;
		this.addressLine1 = addressLine1;
		this.addressLine2 = addressLine2;
		this.city = city;
		this.state = state;
		this.pin = pin;
		this.certifications = certifications;
	}

	public int getHospitalId() {
		return hospitalId;
	}

	public void setHospitalId(int hospitalId) {
		this.hospitalId = hospitalId;
	}

	public String getHospitalName() {
		return hospitalName;
	}

	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}

	public String getAddressLine1() {
		return addressLine1;
	}

	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}

	public String getAddressLine2() {
		return addressLine2;
	}

	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getPin() {
		return pin;
	}

	public void setPin(int pin) {
		this.pin = pin;
	}

	public String getCertifications() {
		return certifications;
	}

	public void setCertifications(String certifications) {
		this.certifications = certifications;
	}

}
