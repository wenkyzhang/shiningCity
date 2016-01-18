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

import org.springframework.context.annotation.Lazy;

@Entity
@Table(name="votes")
@Lazy(false)
public class Vote {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private Long id;
	@Column
	private String userId;
	@Column
	private String userType;
	
	@ManyToOne(cascade = CascadeType.MERGE, optional = false)
	@JoinColumn(name="matchId", referencedColumnName="id")
	private Match match;
	
	@ManyToOne(cascade = CascadeType.MERGE, optional = false)
	@JoinColumn(name="childId", referencedColumnName="id")
	private Model child;
	
	/**
	 * 投票日期，用于控制投票次数
	 */
	@Column
	private String voteDate;
	
	/**
	 * 投票的时间
	 */
	@Column
	private String voteTime;
	
	@Column
	private String ip;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public Match getMatch() {
		return match;
	}

	public void setMatch(Match match) {
		this.match = match;
	}

	public Model getChild() {
		return child;
	}

	public void setChild(Model child) {
		this.child = child;
	}

	public String getVoteDate() {
		return voteDate;
	}

	public void setVoteDate(String voteDate) {
		this.voteDate = voteDate;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getVoteTime() {
		return voteTime;
	}

	public void setVoteTime(String voteTime) {
		this.voteTime = voteTime;
	}
	
	
}
