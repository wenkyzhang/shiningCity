package com.shiningcity.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.shiningcity.entity.match.Links;
import com.shiningcity.entity.match.MatchArea;

@Entity
@Table(name="matchs")
public class Match {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private Long id;
	
	@Column
	private String name;
	
	@OneToMany(mappedBy = "match", cascade = CascadeType.MERGE)
	private List<MatchArea> matchArea;
	
	@Column
	private String matchRules;
	
	@Column
	private String matchGroup;
	
	@Column
	private String publicize;
	
	@Column
	private String description;
	
	/**
	 * 赛事签到列表
	 */
	@OneToMany(mappedBy = "match", cascade = CascadeType.MERGE)
	private List<ChildModel> allSign = new ArrayList<ChildModel>();
	
	/**
	 * 首页菜单链接集
	 */
	@OneToMany(mappedBy = "match", cascade = CascadeType.ALL)
	private List<Links> links = new ArrayList<Links>();
	
	/**
	 * @param model
	 */
	public void addSign(ChildModel model)
	{
		if(allSign == null)
		{
			allSign = new ArrayList<ChildModel>();
		}
		
		allSign.add(model);
	}
	/**
	 * @param model
	 * @return
	 */
	public ChildModel delSign(ChildModel model)
	{
		boolean ret = true;
		if(allSign != null && allSign.contains(model))
		{
			ret = allSign.remove(model);
		}
		
		return ret?model : null;
	}
	
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
	public String getMatchRules() {
		return matchRules;
	}
	public void setMatchRules(String matchRules) {
		this.matchRules = matchRules;
	}
	public String getMatchGroup() {
		return matchGroup;
	}
	public void setMatchGroup(String matchGroup) {
		this.matchGroup = matchGroup;
	}
	public String getPublicize() {
		return publicize;
	}
	public void setPublicize(String publicize) {
		this.publicize = publicize;
	}
	public List<ChildModel> getAllSign() {
		return allSign;
	}
	public void setAllSign(List<ChildModel> allSign) {
		this.allSign = allSign;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public List<MatchArea> getMatchArea() {
		return matchArea;
	}
	public void setMatchArea(List<MatchArea> matchArea) {
		this.matchArea = matchArea;
	}
	public List<Links> getLinks() {
		return links;
	}
	public void setLinks(List<Links> links) {
		this.links = links;
	}
	
	
}
