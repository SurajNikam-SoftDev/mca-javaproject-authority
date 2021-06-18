package com.apnidukaanasc.bean;

import java.io.Serializable;

public class PaymentBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String orderid, prodimg1, paymentstatus, paymenttype;

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public String getProdimg1() {
		return prodimg1;
	}

	public void setProdimg1(String prodimg1) {
		this.prodimg1 = prodimg1;
	}

	public String getPaymentstatus() {
		return paymentstatus;
	}

	public void setPaymentstatus(String paymentstatus) {
		this.paymentstatus = paymentstatus;
	}

	public String getPaymenttype() {
		return paymenttype;
	}

	public void setPaymenttype(String paymenttype) {
		this.paymenttype = paymenttype;
	}

	
}
