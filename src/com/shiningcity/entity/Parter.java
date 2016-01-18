package com.shiningcity.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="alliance_parter")
public class Parter {
	
	@Id
	@Column
	private Long id;
	@Column
	private String parterName;
	@Column
	private String parterUrl;
	@Column
	private String addDate;
	@Column
	private String addUser;
	@Column
	private String logo;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getParterName() {
		return parterName;
	}
	public void setParterName(String parterName) {
		this.parterName = parterName;
	}
	public String getParterUrl() {
		return parterUrl;
	}
	public void setParterUrl(String parterUrl) {
		this.parterUrl = parterUrl;
	}
	public String getAddDate() {
		return addDate;
	}
	public void setAddDate(String addDate) {
		this.addDate = addDate;
	}
	public String getAddUser() {
		return addUser;
	}
	public void setAddUser(String addUser) {
		this.addUser = addUser;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	
	
}
