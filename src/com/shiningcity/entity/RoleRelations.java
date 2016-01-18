package com.shiningcity.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="rolerelations")
public class RoleRelations {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private int id;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="userId", referencedColumnName="id")
	private UserInfo user;
	
	@ManyToOne(optional = false)
	@JoinColumn(name="roleId", referencedColumnName="id")
	private Role role;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public UserInfo getUser() {
		return user;
	}
	public void setUser(UserInfo user) {
		this.user = user;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	
	
}
