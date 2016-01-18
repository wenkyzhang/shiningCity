package com.shiningcity.weixin.utils;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;

import net.sf.json.JSONArray;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;

import com.shiningcity.entity.WxUserInfo;
import com.shiningcity.weixin.entity.AccessToken;
import com.shiningcity.weixin.entity.GlobalAccessToken;

/**
 * 
 * <一句话功能简述> <功能详细描述>
 * 
 * @author klcheng
 * @version [版本号, 2015-06-11]
 * @see [相关类/方法]
 * @since [产品/模块版本]
 */
public class OAuth2Util {
	
	private static Logger logger = Logger.getLogger(OAuth2Util.class);

	public static String GET_CODE = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=APPID&secret=SECRET&code=CODE&grant_type=authorization_code";
	
	public static String GET_CODE1 = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=APPID&redirect_uri=REDIRECT_URI&response_type=code&scope=SCOPE&state=STATE#wechat_redirect";

	public static String GET_URL = "https://api.weixin.qq.com/cgi-bin/user/info?access_token=ACCESS_TOKEN&openid=OPENID";
	
	public static String POST_USERINFO_URL = "https://api.weixin.qq.com/cgi-bin/user/info/batchget?access_token=ACCESS_TOKEN";

	/**
	 * 获取访问token
	 * @param appId
	 * @param secret
	 * @param code
	 * @param grant_type
	 * @return
	 */
	public static AccessToken getAccessToken(String appId, String secret,
			String code, String grant_type) {
		AccessToken token = null;
		String url = GET_CODE.replace("APPID", appId).replace("SECRET", secret)
				.replace("CODE", code)
				.replace("authorization_code", grant_type);
		JSONObject jsonobject = CommonUtil.httpsRequest(url, "GET", null);

		if (null != jsonobject) {
			
			if(jsonobject.containsKey("errcode"))
			{
				logger.error("获取授权失败了." + jsonobject);
				return null;
			}
			
			try {
				token = (AccessToken) JSONObject.toBean(jsonobject,
						AccessToken.class);
			} catch (JSONException e) {
				int errcode = jsonobject.getInt("errcode");
				String errmsg = jsonobject.getString("errmsg");
				logger.error("获取授权失败了:errcode " + errcode + "," + errmsg);
			}
		} else {
			logger.error("获取授权失败了.");
		}
		return token;
	}
	
	/**
	 * 获取当前微信用户
	 * @param code
	 * @param state
	 * @return
	 */
	public static WxUserInfo getCurrentUser(String code, String state, HttpServletRequest request)
	{
		String appId = PushUtil.getValueByKey("serviceInfo.appId").toString();
        String secret = PushUtil.getValueByKey("serviceInfo.secret").toString();
        String grant_type = "authorization_code";
        
        ServletContext application = request.getSession().getServletContext();
        AccessToken token = (AccessToken) application.getAttribute("accessToken");
        
        if(token == null)
        {
        	token = getAccessToken(appId, secret, code, grant_type);
        	application.setAttribute("accessToken", token);
        }
        
        if(token == null)
        {
        	logger.error("Get token failed. Return null.");
        	return null;
        }
        
        logger.info("Get the token is " + token.toString());
        
        //获取全局token
        GlobalAccessToken access_token = CommonUtil.getToken(appId, secret);
        
        if(access_token == null)
        {
        	logger.error("Get access token failed. Return null.");
        	return null;
        }
        
        logger.info(access_token.getAccessToken());
        
        WxUserInfo user = OAuth2Util.getUserInfoByOpenID(access_token.getAccessToken(), token.getOpenid());
        
        return user;
	}

	/**
	 * 
	 *  ubscribe	用户是否订阅该公众号标识，值为0时，代表此用户没有关注该公众号，拉取不到其余信息。
		openid	用户的标识，对当前公众号唯一
		nickname	用户的昵称
		sex	用户的性别，值为1时是男性，值为2时是女性，值为0时是未知
		city	用户所在城市
		country	用户所在国家
		province	用户所在省份
		language	用户的语言，简体中文为zh_CN
		headimgurl	用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表640*640正方形头像），用户没有头像时该项为空。若用户更换头像，原有头像URL将失效。
		subscribe_time	用户关注时间，为时间戳。如果用户曾多次关注，则取最后关注时间
		unionid	只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段。详见：获取用户个人信息（UnionID机制）
		remark	公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注
		groupid	用户所在的分组ID
	 * 
	 * 
	 * @param token
	 * @param openId
	 * @return
	 */
	public static WxUserInfo getUserInfoByOpenID(String token, String openId) {
		String url = GET_URL.replace("ACCESS_TOKEN", token).replace("OPENID",
				openId);
		JSONObject jsonobject = CommonUtil.httpsRequest(url, "GET", null);
		WxUserInfo user = null;
		if (jsonobject != null) {
			try {
				user = (WxUserInfo) JSONObject.toBean(jsonobject,
						WxUserInfo.class);
			} catch (JSONException e) {
				int errcode = jsonobject.getInt("errcode");
				String errmsg = jsonobject.getString("errmsg");
				System.err.println("获取用户信息:errcode " + errcode + "," + errmsg);
			}
		}

		return user;
	}
	
	/**
	 * 获取所有关注账号的信息
	 * @param token
	 * @param ids
	 * @return
	 * @throws Exception 
	 */
	public static List<WxUserInfo> getUserInfoByIDs(String token, List<String> ids) throws Exception
	{
		String url= POST_USERINFO_URL.replace("ACCESS_TOKEN", token);
		
		StringBuffer openIds = new StringBuffer();
		
		if(ids != null && ids.size() > 0)
		{
			openIds.append("{ \"user_list\": [");
			String id = null;
			for(int i = 0; i< ids.size();i++)
			{
				id = ids.get(i);
				openIds.append(String.format("{ \"openid\": \"%s\", \"lang\": \"zh-CN\" }", id));
				if(i != (ids.size() - 1))
				{
					openIds.append(",");
				}
			}
			
			openIds.append("] }");
		}
		
		JSONObject jo = CommonUtil.httpsRequest(url, "POST", openIds.toString());
		
		if(!jo.containsKey("user_info_list"))
		{
			throw new Exception(jo.toString());
		}
		JSONArray userArray = jo.getJSONArray("user_info_list");
		
		List<WxUserInfo> users = new ArrayList<WxUserInfo>();
		
		int size = userArray.size();
		
		JSONObject obj = null;
		WxUserInfo user = null;
		for(int i=0;i<size; i++)
		{
			obj = userArray.getJSONObject(i);
			user = (WxUserInfo) JSONObject.toBean(obj, WxUserInfo.class);
			users.add(user);
		}
		
		return users;
	}

	public static void main(String[] args) {
//		String appId = "wx2783ee32f3f054ac";
//		String secret = "1fc55d0d9e5450d0bf8c5bfd049a160c";
//		// String appId="wxe9731c97c539d7d1";
//		// String secret = "7c4101fa205d6d892730b989eb0762c3";
//		String code = "1";
//		String grantType = "snsapi_userinfo";//"authorization_code";
//		String redirectURI = "http://www.qq.com";
////		try {
////			String mytext = java.net.URLEncoder.encode("http://www.qq.com",
////					"utf-8");
////			System.out.println(mytext);
////		} catch (UnsupportedEncodingException e) {
////			e.printStackTrace();
////		}
////		AccessToken token = getAccessToken(appId, secret, code, grant_type);
////		System.out.println(token.toString());
//		
//		try {
//			testOAuth2(appId, secret, grantType, redirectURI);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
		
	}
}
