package com.ic.model;

public class MemberDTO {

	private int member_id;
	private String id;
	private String nickname;
	private String email;
	private String phone;
	private String pw;
	private String address;
	private int age;
	private char gender;
	private int money;

	public int getMember_id() {
		return member_id;
	}

	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	// 기본 생성자
	public MemberDTO(String id) {
		this.id = id;
	}
	
	
	public MemberDTO(String id, String pw, String nickname, String email, String phone, String address, int age, char gender) {
		this.id = id;
		this.pw = pw;
		this.nickname = nickname;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.age = age;
		this.gender = gender;
		
	}

	public MemberDTO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}
	public MemberDTO(int member_id, int charge_money) {
		this.member_id = member_id;
		this.charge_money = charge_money;
	}
	public MemberDTO() {
		
	}
	private int charge_money;

    

    public int getCharge_money() {
        return charge_money;
    }

    public void setCharge_money(int charge_money) {
        this.charge_money = charge_money;
    }
	
}
