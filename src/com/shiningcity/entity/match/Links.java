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
 * 赛事首页链接
 * @author wenky
 *
 */

@Entity
@Table(name="match_links")
public class Links {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private Long id;
	@Column
	private String name;
	@Column
	private String link;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="matchId", referencedColumnName="id")
	private Match match;

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

	public Match getMatch() {
		return match;
	}

	public void setMatch(Match match) {
		this.match = match;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}
	
	
}
