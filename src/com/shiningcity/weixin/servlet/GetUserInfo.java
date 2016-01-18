package com.shiningcity.weixin.servlet;

import com.shiningcity.weixin.entity.GlobalAccessToken;
import com.shiningcity.weixin.utils.CommonUtil;
import com.shiningcity.weixin.utils.PushUtil;
import com.shiningcity.weixin.utils.UserUtils;

public class GetUserInfo {
	public static void main(String[] args) {
		String appId = PushUtil.getValueByKey("appInfo.appId").toString();
        String secret = PushUtil.getValueByKey("appInfo.secret").toString();
		
		//获取全局token
        GlobalAccessToken access_token = CommonUtil.getToken(appId, secret);
        
        String[] users = UserUtils.getAllUserId(access_token.getAccessToken());
        
        System.out.println(users.length);
        
//        WxUserInfo user = OAuth2Util.getUserInfoByOpenID(access_token.getAccessToken(), fromUserName);
	}
}
