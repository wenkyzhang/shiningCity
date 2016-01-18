package com.shiningcity.entity;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.shiningcity.util.CharUtil;

@Entity
@Table(name="mentor_group")
public class MentorGroup {
	
	@Id
	@Column
	private Long id;
	@Column
	private String name;
	@Column
	private String photo;
	@Column
	private String title;
	@Column
	private String tags;
	@Column
	private String introduction;
	@Column
	private String images;
	@Transient
	private List<String> imageList;
	@Column
	private Long sort;
	@Column
	private String summary;
	@Transient
	private String pinyin;
	@Column
	private Long isShow;
	
	
	
	public MentorGroup() {
		super();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
		
		if(name != null)
		{
			this.pinyin = CharUtil.hanyuToPinyin(name);
		}
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getPinyin() {
		if(name != null)
		{
			pinyin = CharUtil.hanyuToPinyin(name);
		}
		return pinyin;
	}
	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
		if(images != null)
		{
			this.imageList = Arrays.asList(images.split(";"));
		}
		else
		{
			this.imageList = new ArrayList<String>();
		}
	}
	public List<String> getImageList() {
		
		if(this.images != null)
		{
			this.imageList = Arrays.asList(images.split(";"));
		}
		else
		{
			this.imageList = new ArrayList<String>();
		}
		
		
		return imageList;
	}
	public void setImageList(List<String> imageList) {
		this.imageList = imageList;
	}
	public Long getSort() {
		return sort;
	}
	public void setSort(Long sort) {
		this.sort = sort;
	}
	public Long getIsShow() {
		return isShow;
	}
	public void setIsShow(Long isShow) {
		this.isShow = isShow;
	}
}
