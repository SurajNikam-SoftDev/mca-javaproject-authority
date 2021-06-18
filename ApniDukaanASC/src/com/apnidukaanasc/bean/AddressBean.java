package com.apnidukaanasc.bean;

import java.io.Serializable;

public class AddressBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String aid, mobilenumber, housenobuildingname, roadnameareacolony, state, city, landmark, pincode, userid;
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	public String getHousenobuildingname() {
		return housenobuildingname;
	}
	public void setHousenobuildingname(String housenobuildingname) {
		this.housenobuildingname = housenobuildingname;
	}
	public String getRoadnameareacolony() {
		return roadnameareacolony;
	}
	public void setRoadnameareacolony(String roadnameareacolony) {
		this.roadnameareacolony = roadnameareacolony;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	

}
