package com.shiningcity.entity.match;

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

import com.shiningcity.entity.Match;
import com.shiningcity.util.CharUtil;

/**
 * 赛事赛区关系对象
 * @author wenky
 *
 */
@Entity
@Table(name="match_area")
public class MatchArea {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private Long id;
	
	@ManyToOne(cascade = CascadeType.ALL, optional = false)
	@JoinColumn(name="areaId", referencedColumnName="id")
	private Area area;
	
	@ManyToOne(cascade = CascadeType.ALL, optional = false)
	@JoinColumn(name="matchId", referencedColumnName="id")
	private Match match;
	@Column
	private String areaDesc;
	@Column
	private String areaImage;
	@Column
	private String voteStart;
	@Column
	private String voteEnd;
	
	@Transient
	private String pinyin;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Area getArea() {
		return area;
	}
	public void setArea(Area area) {
		this.area = area;
		
		if(area != null && area.getAreaName() != null)
		{
			this.pinyin = CharUtil.hanyuToPinyin(area.getAreaName());
		}
	}
	public Match getMatch() {
		return match;
	}
	public void setMatch(Match match) {
		this.match = match;
	}
	public String getAreaDesc() {
		return areaDesc;
	}
	public void setAreaDesc(String areaDesc) {
		this.areaDesc = areaDesc;
	}
	public String getAreaImage() {
		return areaImage;
	}
	public void setAreaImage(String areaImage) {
		this.areaImage = areaImage;
	}
	public String getVoteStart() {
		return voteStart;
	}
	public void setVoteStart(String voteStart) {
		this.voteStart = voteStart;
	}
	public String getVoteEnd() {
		return voteEnd;
	}
	public void setVoteEnd(String voteEnd) {
		this.voteEnd = voteEnd;
	}
	public String getPinyin() {
		if(pinyin == null || "".equals(pinyin))
		{
			if(area != null && area.getAreaName() != null)
			{
				pinyin = CharUtil.hanyuToPinyin(area.getAreaName());
			}
		}
		return pinyin == null?"":pinyin.toUpperCase();
	}
	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}
	
	
}
