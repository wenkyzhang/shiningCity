package com.shiningcity.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table( name = "alliance_services" )
public class AllianceServices {
	
	@Id
	@Column
	private Long id;
	@Column
	private String services;
	@Column
	private String serviceslogo;
	@Column
	private String systems;
	@Column
	private String systemslogo;
	@Column
	private String rist;
	@Column
	private String ristlogo;
	@Column
	private String video1;
	@Column
	private String video2;
	public String getServices() {
		return services;
	}
	public void setServices(String services) {
		this.services = services;
	}
	public String getServiceslogo() {
		return serviceslogo;
	}
	public void setServiceslogo(String serviceslogo) {
		this.serviceslogo = serviceslogo;
	}
	public String getSystems() {
		return systems;
	}
	public void setSystems(String systems) {
		this.systems = systems;
	}
	public String getSystemslogo() {
		return systemslogo;
	}
	public void setSystemslogo(String systemslogo) {
		this.systemslogo = systemslogo;
	}
	public String getRist() {
		return rist;
	}
	public void setRist(String rist) {
		this.rist = rist;
	}
	public String getRistlogo() {
		return ristlogo;
	}
	public void setRistlogo(String ristlogo) {
		this.ristlogo = ristlogo;
	}
	public String getVideo1() {
		return video1;
	}
	public void setVideo1(String video1) {
		this.video1 = video1;
	}
	public String getVideo2() {
		return video2;
	}
	public void setVideo2(String video2) {
		this.video2 = video2;
	}
	
	
	
}
