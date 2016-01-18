package com.shiningcity.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="alliance_news")
public class News {

	@Id
	@Column
	private Long id;
	@Column
	private String title;
	@Column
	private String url;
	@Column
	private String publisher;
	@Column
	private String publishDate;
	@Column
	private String addDate;
	@Column
	private String addUser;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getAddUser() {
		return addUser;
	}
	public void setAddUser(String addUser) {
		this.addUser = addUser;
	}
	public String getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(String publishDate) {
		this.publishDate = publishDate;
	}
	public String getAddDate() {
		return addDate;
	}
	public void setAddDate(String addDate) {
		this.addDate = addDate;
	}
	
	
}
