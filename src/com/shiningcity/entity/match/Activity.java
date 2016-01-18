package com.shiningcity.entity.match;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.shiningcity.entity.Match;

/**
 * 活动实体类
 * @author wenky
 *
 */
@Entity
@Table(name="activity")
public class Activity {
	
	@Column
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="matchId", referencedColumnName="id")
	private Match match;
	
	@Column
	private String name;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="area", referencedColumnName="id")
	private MatchArea area;
	
	@Column
	private String startDate;
	
	@Column
	private String endDate;
	
	@Column
	private String creater;
	
	@Column
	private String createDate;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Match getMatch() {
		return match;
	}
	public void setMatch(Match match) {
		this.match = match;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getCreater() {
		return creater;
	}
	public void setCreater(String creater) {
		this.creater = creater;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public MatchArea getArea() {
		return area;
	}
	public void setArea(MatchArea area) {
		this.area = area;
	}
	
	
}
