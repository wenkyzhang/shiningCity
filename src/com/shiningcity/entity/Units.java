package com.shiningcity.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity  
@Table( name = "alliance_units" )
public class Units {
	
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column
	private String name;
	@Column
	private String title;
	@Column
	private String philosophy;
	@Column
	private String services;
	@Column
	private String words;
	@Column
	private String description;
	@Column
	private String logo;
	@Column
	private String qualification;
	@Column
	private Long sort;
	@Column
	private String url;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPhilosophy() {
		return philosophy;
	}
	public void setPhilosophy(String philosophy) {
		this.philosophy = philosophy;
	}
	public String getServices() {
		return services;
	}
	public void setServices(String services) {
		this.services = services;
	}
	public String getWords() {
		return words;
	}
	public void setWords(String words) {
		this.words = words;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public Long getSort() {
		return sort;
	}
	public void setSort(Long sort) {
		this.sort = sort;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
}
