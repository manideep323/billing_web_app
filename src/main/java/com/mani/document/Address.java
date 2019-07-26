package com.mani.document;

import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.stereotype.Component;

@Document(collection="address")
public class Address {
	
	private String syNo;
	private String town;
	private String mandal;
	private String district;
	private String state;
	private String phone;
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Address(String syNo, String town, String mandal, String district, String state, String phone) {
		super();
		this.syNo = syNo;
		this.town = town;
		this.mandal = mandal;
		this.district = district;
		this.state = state;
		this.phone = phone;
	}
	public String getSyNo() {
		return syNo;
	}
	public void setSyNo(String syNo) {
		this.syNo = syNo;
	}
	public String getTown() {
		return town;
	}
	public void setTown(String town) {
		this.town = town;
	}
	public String getMandal() {
		return mandal;
	}
	public void setMandal(String mandal) {
		this.mandal = mandal;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "" + syNo + ", " + town + ", " + mandal + ", " + district + ", "
				+ state + ", " + phone + "";
	}
	
	

}
