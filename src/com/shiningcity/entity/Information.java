package com.shiningcity.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 消息类
 * 
 * 赛程报道/欧洲游学
 * 
 * @author wenky
 *
 */
@Entity
@Table(name="news")
public class Information {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private Long id;
	
	@Column
	private String name;

	@Column
	private String image;
	
	@Column
	private String url;
	
	@Column
	private String pubDate;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="matchId", referencedColumnName="id")
	private Match match;
	
	@Column
	private int type;
	
	@Column
	private String addUser;
	
	@Column
	private String addDate;

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

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getPubDate() {
		return pubDate;
	}

	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}

	public Match getMatch() {
		return match;
	}

	public void setMatch(Match match) {
		this.match = match;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getAddUser() {
		return addUser;
	}

	public void setAddUser(String addUser) {
		this.addUser = addUser;
	}

	public String getAddDate() {
		return addDate;
	}

	public void setAddDate(String addDate) {
		this.addDate = addDate;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
}
