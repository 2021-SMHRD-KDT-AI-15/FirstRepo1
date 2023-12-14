package com.ic.model;

public class PoliceDTO {
	private String police_name;
	private String police_location;
	private String police_number;
	
	public String getPolice_name() {
		return police_name;
	}

	public void setPolice_name(String police_name) {
		this.police_name = police_name;
	}

	public String getPolice_location() {
		return police_location;
	}

	public void setPolice_location(String police_location) {
		this.police_location = police_location;
	}

	public String getPolice_number() {
		return police_number;
	}

	public void setPolice_number(String police_number) {
		this.police_number = police_number;
	}
	
	public PoliceDTO() {
		
	}
	
	// 경찰서 목록 조회 생성자
	public PoliceDTO(String police_name, String police_location, String police_number) {
		super();
		this.police_name = police_name;
		this.police_location = police_location;
		this.police_number = police_number;
	}
	
	
}


