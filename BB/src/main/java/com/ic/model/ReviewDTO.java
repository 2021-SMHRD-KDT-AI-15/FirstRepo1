package com.ic.model;

public class ReviewDTO {

	private int review_no;
	private int member_id;
	private String review_ctnt;
	private char review_ctgr;
	private int u_like;
	private int u_dislike;
	private String errand_review_ctgr;
	
	
	public int getReview_no() {
		return review_no;
	}
	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public String getReview_ctnt() {
		return review_ctnt;
	}
	public void setReview_ctnt(String review_ctnt) {
		this.review_ctnt = review_ctnt;
	}
	public char getReview_ctgr() {
		return review_ctgr;
	}
	public void setReview_ctgr(char review_ctgr) {
		this.review_ctgr = review_ctgr;
	}
	public int getU_like() {
		return u_like;
	}
	public void setU_like(int u_like) {
		this.u_like = u_like;
	}
	public int getU_dislike() {
		return u_dislike;
	}
	public void setU_dislike(int u_dislike) {
		this.u_dislike = u_dislike;
	}
	public String getErrand_review_ctgr() {
		return errand_review_ctgr;
	}
	public void setErrand_review_ctgr(String errand_review_ctgr) {
		this.errand_review_ctgr = errand_review_ctgr;
	}
	
	
	// 기본 생성자
	public ReviewDTO() {
	}
	
}
