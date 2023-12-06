package com.ic.model;

public class ReviewDTO {

	private int review_no;
	private int member_id;
	private String review_ctnt;
	private char review_ctgr;
	private int u_like;
	private int u_dislike;
	private String errand_review_ctgr;
	private String nickname;
	
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
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
	
	// 상대에 대한 좋은 리뷰 생성자
	public ReviewDTO(int subject_id, String content, int likeCheck, String errand_ctgr, String subject_nickname) {
		this.member_id = subject_id;
		this.review_ctnt = content;
		this.u_like = likeCheck;
		this.errand_review_ctgr = errand_ctgr;
		this.nickname = subject_nickname;
	}
	
	// 상대에 대한 좋지 않은 리뷰 생성자
	public ReviewDTO(int subject_id, String content, String errand_ctgr, int likeCheck, String subject_nickname) {
		this.member_id = subject_id;
		this.review_ctnt = content;
		this.u_dislike = likeCheck;
		this.errand_review_ctgr = errand_ctgr;
		this.nickname = subject_nickname;
	}
	
	// 내가 작성한 리뷰 생성자
	public ReviewDTO(int client_id, String content, String errand_ctgr, String client_nickname) {
		this.member_id = client_id;
		this.review_ctnt = content;
		this.errand_review_ctgr = errand_ctgr;
		this.nickname = client_nickname;
	}
	
}
