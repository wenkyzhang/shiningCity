package com.shiningcity.entity.match;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 赛区
 * @author wenky
 *
 */
@Entity
@Table(name="areas")
public class Area {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private Long id;
	@Column
	private String areaName;
	@Column
	private String areaDesc;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getAreaDesc() {
		return areaDesc;
	}
	public void setAreaDesc(String areaDesc) {
		this.areaDesc = areaDesc;
	}
	
}
