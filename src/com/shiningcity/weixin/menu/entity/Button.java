package com.shiningcity.weixin.menu.entity;

/**
 * 微信菜单按钮的基类
 * 所有一级菜单、二级菜单都共有一个相同的属性，那就是name 
 * @author  turongfan
 * @version  [版本号, 2015-1-11]
 * @see  [相关类/方法]
 * @since  [产品/模块版本]
 */
public class Button {
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}