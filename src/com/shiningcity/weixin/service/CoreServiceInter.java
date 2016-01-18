package com.shiningcity.weixin.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shiningcity.entity.WxUserInfo;

public interface CoreServiceInter {
	/**
	 * 处理微信推送过来的消息事件
	 * @param request
	 * @return
	 */
	String processRequest(HttpServletRequest request, HttpServletResponse response);
	/**
	 * 处理关注， 如果已关注更新最新信息，并返回对象，否则返回null
	 * @param user
	 * @return
	 */
	WxUserInfo processOAuth2(WxUserInfo user);
	
	void saveAll(List<WxUserInfo> users) throws Exception;
}
