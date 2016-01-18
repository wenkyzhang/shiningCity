package com.shiningcity.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;
@Entity
@Table(name="child_model")
public class ChildModel {
	
	@Column
	private String name;

	@Column
	private String birth;

	@Column
	private Integer sex;

	@Id
	@Column
	private int id;
	
	@Column
	private String IDCard;

	@Column
	private String phone;

	@Column
	private String mail;

	@Column
	private String qq_or_weixin;

	@Column
	private String area;

	@Column
	private Integer age;

	@Column
	private String councelor;

	@Column
	private String specilty;

	@Column
	private String school;

	@Column
	private String address;

	@Column
	private String remark;
	
	@Transient
	private MultipartFile photo;
	
	@Transient
	private String photoPath;
	
	@ManyToOne(cascade = CascadeType.ALL, optional = false)
	@JoinColumn(name="matchId", referencedColumnName="id")
	private Match match;
	
	@OneToMany(mappedBy = "child", cascade = CascadeType.ALL)
	private List<Vote> votes;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getQq_or_weixin() {
		return qq_or_weixin;
	}

	public void setQq_or_weixin(String qq_or_weixin) {
		this.qq_or_weixin = qq_or_weixin;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getCouncelor() {
		return councelor;
	}

	public void setCouncelor(String councelor) {
		this.councelor = councelor;
	}

	public String getSpecilty() {
		return specilty;
	}

	public void setSpecilty(String specilty) {
		this.specilty = specilty;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public MultipartFile getPhoto() {
		return photo;
	}

	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}

	public String getIDCard() {
		return IDCard;
	}

	public void setIDCard(String iDCard) {
		IDCard = iDCard;
	}

	public String getPhotoPath() {
		return photoPath;
	}

	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}

	public Match getMatch() {
		return match;
	}

	public void setMatch(Match match) {
		this.match = match;
	}

	public List<Vote> getVotes() {
		return votes;
	}

	public void setVotes(List<Vote> votes) {
		this.votes = votes;
	}


}
