package com.shiningcity.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.shiningcity.entity.match.MatchArea;

@Entity
@Table(name="model")
public class Model {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private Long id;
	/**
	 * 姓名
	 */
	@Column
	private String name;
	/**
	 * 照片
	 */
	@Column
	private String photo;
	/**
	 * 年龄
	 */
	@Column
	private Integer age;
	/**
	 * 性别
	 */
	@Column
	private String sex;
	
	/**
	 * 身高
	 */
	private Integer iHeight;
	
	/**
	 * 年龄组别
	 * 幼儿组、儿童组、少儿组、亲子组 
	 */
	private String ageGroup;
	/**
	 * 人气
	 */
	@Column
	private Long popularity;
	
	/**
	 * 参加的赛事
	 */
	@ManyToOne(cascade = CascadeType.MERGE, optional = false)
	@JoinColumn(name="matchId", referencedColumnName="id")
	private Match match;
	
	/**
	 * 投票列表
	 */
	@Column
	private Long votes;
	
	/**
	 * 创建时间
	 */
	@Column
	private String createDate;
	/**
	 * 创建者
	 */
	@Column
	private String createUser;
	/**
	 * 视频地址
	 */
	@Column
	private String videourl;
	/**
	 * 童模描述
	 */
	@Column
	private String description;
	/**
	 * 童模ID  用于唯一标识和排序
	 * 一次活动唯一
	 */
	@Column
	private String modelId;
	
	/**
	 * 文件上传组件
	 */
	@Transient
	private MultipartFile photoFile;
	
	/**
	 * 联系人
	 */
	@Column
	private String contact;
	
	/**
	 * 联系方式 
	 */
	@Column
	private String contactPhone;
	
	/**
	 * 报名赛区
	 */
	@ManyToOne(optional = false)
	@JoinColumn(name="area", referencedColumnName="id")
	private MatchArea area;
	
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
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Long getPopularity() {
		return popularity;
	}
	public void setPopularity(Long popularity) {
		this.popularity = popularity;
	}
	public Match getMatch() {
		return match;
	}
	public void setMatch(Match match) {
		this.match = match;
	}
	public Long getVotes() {
		return votes;
	}
	public void setVotes(Long votes) {
		this.votes = votes;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getCreateUser() {
		return createUser;
	}
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	public MultipartFile getPhotoFile() {
		return photoFile;
	}
	public void setPhotoFile(MultipartFile photoFile) {
		this.photoFile = photoFile;
	}
	public String getVideourl() {
		return videourl;
	}
	public void setVideourl(String videourl) {
		this.videourl = videourl;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAgeGroup() {
		return ageGroup;
	}
	public void setAgeGroup(String ageGroup) {
		this.ageGroup = ageGroup;
	}
	public Integer getiHeight() {
		return iHeight;
	}
	public void setiHeight(Integer iHeight) {
		this.iHeight = iHeight;
	}
	public String getModelId() {
		return modelId;
	}
	public void setModelId(String modelId) {
		this.modelId = modelId;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getContactPhone() {
		return contactPhone;
	}
	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}
	public MatchArea getArea() {
		return area;
	}
	public void setArea(MatchArea area) {
		this.area = area;
	}
	
	
}
