package com.apnidukaanasc.bean;

import java.io.Serializable;

public class PurchaseOrderBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String parcelid, pid, price, paymenttype, opstatus, producttitle, prodimg1, referenceno;
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPaymenttype() {
		return paymenttype;
	}
	public void setPaymenttype(String paymenttype) {
		this.paymenttype = paymenttype;
	}
	public String getOpstatus() {
		return opstatus;
	}
	public void setOpstatus(String opstatus) {
		this.opstatus = opstatus;
	}
	public String getProducttitle() {
		return producttitle;
	}
	public void setProducttitle(String producttitle) {
		this.producttitle = producttitle;
	}
	public String getProdimg1() {
		return prodimg1;
	}
	public void setProdimg1(String prodimg1) {
		this.prodimg1 = prodimg1;
	}
	public String getParcelid() {
		return parcelid;
	}
	public void setParcelid(String parcelid) {
		this.parcelid = parcelid;
	}
	public String getReferenceno() {
		return referenceno;
	}
	public void setReferenceno(String referenceno) {
		this.referenceno = referenceno;
	} 

	
}
