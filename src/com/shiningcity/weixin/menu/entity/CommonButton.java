package com.shiningcity.weixin.menu.entity;

/**
 * 微信子菜单项的封装
 * 这里对子菜单是这样定义的：没有子菜单的菜单项，有可能是二级菜单项，也有可能是不含二级菜单的一级菜单。这类子菜单项一定会包含三个属性：type、name和key 
 * @author  turongfan
 * @version  [版本号, 2015-1-11]
 * @see  [相关类/方法]
 * @since  [产品/模块版本]
 */
public class CommonButton extends Button {
	private String type;
	private String key;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}
}