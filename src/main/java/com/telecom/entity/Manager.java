package com.telecom.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Manager")
public class Manager {
	
	@Id
	@Column(name="mid")
	private int mid;
	
	@Column(name="mname")
	private String mname;
	
	@Column(name="pword")
	private String pword;
	
	@Column(name="region")
	private int region;

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getPword() {
		return pword;
	}

	public void setPword(String pword) {
		this.pword = pword;
	}

	public int getRegion() {
		return region;
	}

	public void setRegion(int region) {
		this.region = region;
	}
	
	
	
	
	

}
