package com.shiningcity.weixin.test;


import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.shiningcity.weixin.entity.GlobalAccessToken;
import com.shiningcity.weixin.message.push.Article;
import com.shiningcity.weixin.utils.UserUtils;
import com.shiningcity.weixin.utils.WeixinUtil;

/**
 * 微信自动推送测试代码
 * @author  klcheng
 * @version  [版本号, 2015-5-31]
 * @see  [相关类/方法]
 * @since  [产品/模块版本]
 */

public class PushMsgManager {
	@SuppressWarnings("unused")
	private static final Article[] Article = null;
	private static Logger log = LoggerFactory.getLogger(PushMsgManager.class);

	public static void main(String[] args) {
		// 第三方用户唯一凭证
		String appId = "wxe9731c97c539d7d1";
		// 第三方用户唯一凭证密钥
		String appSecret = "147af2c13c48831bbfedd04c6601abfd";

		// 调用接口获取access_token
		GlobalAccessToken at = WeixinUtil.getAccessToken(appId, appSecret);

		JSONObject uploadJson = uploadInfo(at.getAccessToken());
		if(null == uploadJson.get("errcode")){
			String [] openIDs = UserUtils.getAllUserId(at.getAccessToken());
			pushMsg2OpenIds(at.getAccessToken(), openIDs, uploadJson);
		}
		else{
			log.info("upload media err:"+uploadJson);
		}
		
	}
	
	/**
	 * 上传图文消息素材
	 */
	private static JSONObject uploadInfo(String accessToken)
	{
		
		String upload_message_url = "https://api.weixin.qq.com/cgi-bin/media/uploadnews?access_token="+accessToken;
		Article [] arts = new Article [2];
		Article art1 = new Article();
		art1.setAuthor("xxx");
		art1.setContent("this is first content");
		art1.setContent_source_url("http://www.baidu.com");
		art1.setDigest("this is first message.");
		art1.setShow_cover_pic(0);
		art1.setThumb_media_id("qI6_Ze_6PtV7svjolgs-rN6stStuHIjs9_DidOHaj0Q-mwvBelOXCFZiq2OsIU-p");
		art1.setTitle("this is first message");
		arts[0] = art1;
		
		Article art2 = new Article();
		art2.setAuthor("xxx");
		art2.setContent("this is second content");
		art2.setContent_source_url("");
		art2.setDigest("this is second message.");
		art2.setShow_cover_pic(0);
		art2.setThumb_media_id("qI6_Ze_6PtV7svjolgs-rN6stStuHIjs9_DidOHaj0Q-mwvBelOXCFZiq2OsIU-p");
		art2.setTitle("this is second message");
		arts[1] = art2;
		
		JSONObject articles = new JSONObject();
		articles.put("articles", arts);
		String jsonPrams = JSONObject.fromObject(articles).toString();
		
		System.out.println(jsonPrams);
		// 调用接口上传图文素材
		JSONObject jsonObject = WeixinUtil.httpRequest(upload_message_url, "POST", jsonPrams);
		
		return jsonObject;
		
	}

	private static void pushMsg2OpenIds(String accessToken, String [] openIDs,JSONObject uploadJson)
	{
		System.out.println("in mehtod pushMsg...........................");
		System.out.println(uploadJson);
//		String push_url = "https://api.weixin.qq.com/cgi-bin/message/mass/send?access_token="+accessToken;
		JSONObject pushJsonObj = new JSONObject();
		pushJsonObj.put("touser", openIDs);
		
		JSONObject typeJson = new JSONObject();
		typeJson.put("media_id", uploadJson.get("media_id"));
		pushJsonObj.put(uploadJson.get("type"), typeJson);
		pushJsonObj.put("msgtype", uploadJson.get("type"));
		System.out.println(pushJsonObj);
	}
	
}