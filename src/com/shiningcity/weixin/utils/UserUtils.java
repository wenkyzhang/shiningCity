package com.shiningcity.weixin.utils;

import java.util.Arrays;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.lang.ArrayUtils;

/**
 * 用户信息获取
 * @author klcheng
 *
 */
public class UserUtils {
	
	private static String openID_url = "https://api.weixin.qq.com/cgi-bin/user/get?access_token=ACCESS_TOKEN&next_openid=NEXT_OPENID";

	/**
	 * 获取所有用户的OpenID
	 */
	public static String [] getAllUserId(String access_token){
		//存储所有openid
		String [] openIds = null;

		String getOpenID_url = openID_url.replace("ACCESS_TOKEN", access_token).replace("NEXT_OPENID", "");
		
		
		JSONObject jsonObject = WeixinUtil.httpRequest(getOpenID_url, "GET", null);
		//最后一个的下一个openid
		String nextOpenId = "";
		
		if(null != jsonObject && null == jsonObject.get("errcode"))
		{
			openIds = new String [jsonObject.getInt("total")];
			openIds = (String[]) ((JSONArray)((JSONObject)jsonObject.get("data")).get("openid")).toArray(new String[]{});
			
			nextOpenId = jsonObject.get("next_openid").toString();
			while(!"".equals(nextOpenId))
			{
				getOpenID_url = openID_url.replace("ACCESS_TOKEN", access_token).replace("NEXT_OPENID", nextOpenId);
				jsonObject = WeixinUtil.httpRequest(getOpenID_url, "GET", null);
				nextOpenId = null == jsonObject.get("next_openid")? null : jsonObject.get("next_openid").toString();
				if(jsonObject.getInt("count") > 0)
				{
					String[] data = (String[]) ((JSONArray)((JSONObject)jsonObject.get("data")).get("openid")).toArray(new String[]{});
					openIds = (String[]) ArrayUtils.addAll(data, openIds);
				}
				
			}
		}
		
		System.out.println(Arrays.asList(openIds));
		return openIds;
	}
}
