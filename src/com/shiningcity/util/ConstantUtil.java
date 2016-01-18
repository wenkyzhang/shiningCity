package com.shiningcity.util;

import java.text.SimpleDateFormat;


public class ConstantUtil {
	
	public static String KEY_LOGIN_USER = "l_user";
	/**
	 * ===============配置文件Key =================
	 */
	public static String KEY_AGE_GROUP = "ageGroup";
	
	/**
	 * 日期格式化：yyyy-MM-dd
	 */
	public static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");
	/**
	 * 时间格式化：yyyy-MM-dd HH:mm:ss
	 */
	public static final SimpleDateFormat TIME_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	/**
	 * 毫秒时间格式化：yyyy-MM-dd HH:mm:ss SSS
	 */
	public static final SimpleDateFormat MILLI_SECOND_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS");
	
	
	/**
	 * =================参数方法===================
	 * @throws Exception 
	 */
	
	/**
	 * 获取年龄组集合
	 * @return
	 * @throws Exception
	 */
	public static String getAgeGroups() throws Exception{
		String groups = ConfigUtil.getParam(KEY_AGE_GROUP);
		
		if(groups == null)
		{
			throw new Exception("No find param. key is " + KEY_AGE_GROUP);
		}
		
		return groups;
	}
}
