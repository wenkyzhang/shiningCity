package com.shiningcity.weixin.utils;

/**
 * 
 * @author klcheng
 * @date 2015-06-03
 * 
 */
public class StringUtil
{
	public static boolean isEmpty(String str)
	{
		boolean result = false;

		if (null == str || str.isEmpty())
		{
			result = true;
		}
		return result;
	}
	
}
