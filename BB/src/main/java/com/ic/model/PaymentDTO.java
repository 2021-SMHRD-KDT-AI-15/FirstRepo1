package com.ic.model;

public class PaymentDTO {

	private int payment_no;
	private int member_id;
	private String payment_date;
	private int payment_money;
	private char payment_ctgr;
	
	
	public int getPayment_no() {
		return payment_no;
	}
	public void setPayment_no(int payment_no) {
		this.payment_no = payment_no;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	public int getPayment_money() {
		return payment_money;
	}
	public void setPayment_money(int payment_money) {
		this.payment_money = payment_money;
	}
	public char getPayment_ctgr() {
		return payment_ctgr;
	}
	public void setPayment_ctgr(char payment_ctgr) {
		this.payment_ctgr = payment_ctgr;
	}
	
	
	// 기본 생성자
	public PaymentDTO() {
	}
	
}
