package com.shiningcity.weixin.menu.entity;

/**
 * 微信view类型的菜单
 * View类型的菜单有3个属性：type、name和url
 * @author  turongfan
 * @version  [版本号, 2015-5-30]
 * @see  [相关类/方法]
 * @since  [产品/模块版本]
 */
public class ViewButton extends Button {
	private String type;
	private String url;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}