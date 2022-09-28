package com.telecom.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Customer")
public class Customer {
	
	@Id
	@Column(name="cuid")
	private int cuid;
	
	@Column(name="cuname")
	private String cuname;
	
	@Column(name="pword")
	private String pword;

	

	public int getCuid() {
		return cuid;
	}

	public void setCuid(int cuid) {
		this.cuid = cuid;
	}

	
	public String getCuname() {
		return cuname;
	}

	public void setCuname(String cuname) {
		this.cuname = cuname;
	}

	public String getPword() {
		return pword;
	}

	public void setPword(String pword) {
		this.pword = pword;
	}
	
	

}
