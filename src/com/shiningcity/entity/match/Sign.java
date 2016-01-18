package com.shiningcity.entity.match;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.shiningcity.entity.ChildModel;

/**
 * 签到实体类
 * @author wenky
 *
 */
@Entity
@Table(name="sign")
public class Sign {
	@Column
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="activity", referencedColumnName="id")
	private Activity activity;
	
	@Column
	private String name;
	
	@Column
	private String phone;
	
	@Column
	private String signDate;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="cmId", referencedColumnName="id")
	private ChildModel model;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Activity getActivity() {
		return activity;
	}
	public void setActivity(Activity activity) {
		this.activity = activity;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSignDate() {
		return signDate;
	}
	public void setSignDate(String signDate) {
		this.signDate = signDate;
	}
	public ChildModel getModel() {
		return model;
	}
	public void setModel(ChildModel model) {
		this.model = model;
	}
	
	
}
