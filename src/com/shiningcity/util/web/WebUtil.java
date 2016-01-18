package com.shiningcity.util.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.shiningcity.util.ConfigUtil;

public class WebUtil {
	
	private static Logger logger = Logger.getLogger(WebUtil.class);
	
	/**
	 * 获取Cookie值
	 * @param request
	 * @param cookie
	 * @return
	 */
	public static String getCookie(HttpServletRequest request, String cookie)
	{
		Cookie[] cookies = request.getCookies();
		
		if(cookies == null)
		{
			return null;
		}
		
		for(Cookie c : cookies)
		{
			if(c.getName().equals(cookie))
			{
				return c.getValue();
			}
		}
		return null;
	}
	
	/**
	 * 设置Cookie
	 * 
	 * @param response
	 * @param key 
	 * @param value
	 */
	public static void setCookie(HttpServletResponse response, String key, String value)
	{
		setCookie(response, key, value, 0);
	}
	
	/**
	 * 设置Cookie，并设置cookie的有效周期
	 * @param response
	 * @param key
	 * @param value
	 * @param cycle
	 */
	public static void setCookie(HttpServletResponse response, String key, String value, int cycle)
	{
		Cookie cookie = new Cookie(key, value);
		
		cookie.setMaxAge(cycle);
		
		response.addCookie(cookie);
	}
	
	/**
	 * 获取当前请求的投票次数 
	 * @param request
	 * @return
	 */
	public static int getVotes(HttpServletRequest request) {
		
		String value = WebUtil.getCookie(request, ConfigUtil.VOTE_KEY);
		
		int val = 0;
		if(value != null && "".equals(value))
		{
			try {
				val = Integer.parseInt(value);
			} catch (Exception e) {
				logger.error("Read vote count failed. value is " + value);
			}
		}
		return val;
	}
}
