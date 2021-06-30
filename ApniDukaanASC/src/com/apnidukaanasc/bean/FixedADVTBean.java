package com.apnidukaanasc.bean;

import java.io.Serializable;

public class FixedADVTBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String faid, rank, photoimage;

	public String getFaid() {
		return faid;
	}

	public void setFaid(String faid) {
		this.faid = faid;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getPhotoimage() {
		return photoimage;
	}

	public void setPhotoimage(String photoimage) {
		this.photoimage = photoimage;
	}
	
}
