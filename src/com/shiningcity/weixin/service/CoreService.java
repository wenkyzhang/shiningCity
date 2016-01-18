package com.shiningcity.weixin.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiningcity.dao.MatchDao;
import com.shiningcity.dao.SystemSetDao;
import com.shiningcity.dao.WxUserInfoDao;
import com.shiningcity.entity.Match;
import com.shiningcity.entity.WxUserInfo;
import com.shiningcity.util.ConstantUtil;
import com.shiningcity.weixin.constans.WeiXinConstans;
import com.shiningcity.weixin.entity.GlobalAccessToken;
import com.shiningcity.weixin.message.resp.Article;
import com.shiningcity.weixin.message.resp.NewsMessage;
import com.shiningcity.weixin.message.resp.TextMessage;
import com.shiningcity.weixin.utils.CommonUtil;
import com.shiningcity.weixin.utils.MessageUtil;
import com.shiningcity.weixin.utils.OAuth2Util;
import com.shiningcity.weixin.utils.PushUtil;

/**
 * 核心服务类
 * 
 * @author klcheng
 * @date 2015-06-18
 */
@Service
public class CoreService implements CoreServiceInter
{
	Logger logger = Logger.getLogger(CoreService.class);
	
	@Autowired
	private MatchDao dao;
	
	@Autowired
	private SystemSetDao sysDao;
	
	@Autowired
	private WxUserInfoDao wxDao;
	
	/**
	 * 处理微信发来的请求
	 * 
	 * @param request
	 * @return
	 */
	@Override
	public String processRequest(HttpServletRequest request, HttpServletResponse response)
	{
		String respMessage = null;
		try
		{
			// 默认返回的文本消息内容
			String respContent = "请求处理异常，请稍候尝试！";

			// xml请求解析
			Map<String, String> requestMap = MessageUtil.parseXml(request);

			// 发送方帐号（open_id）
			String fromUserName = requestMap.get("FromUserName");
			// 公众帐号
			String toUserName = requestMap.get("ToUserName");
			// 消息类型
			String msgType = requestMap.get("MsgType");

			// 回复文本消息
			TextMessage textMessage = new TextMessage();
			textMessage.setToUserName(fromUserName);
			textMessage.setFromUserName(toUserName);
			textMessage.setCreateTime(new Date().getTime());
			textMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_TEXT);
			textMessage.setFuncFlag(0);
			
			respContent = sysDao.findValue("weixinmsg");
			// 文本消息
			if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_TEXT))
			{
				//respContent = "您发送的是文本消息！";
			}
			// 图片消息
			else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_IMAGE))
			{
				//respContent = "您发送的是图片消息！";
			}
			// 地理位置消息
			else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_LOCATION))
			{
				//respContent = "您发送的是地理位置消息！";
			}
			// 链接消息
			else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_LINK))
			{
				//respContent = "您发送的是链接消息！";
			}
			// 音频消息
			else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_VOICE))
			{
				//respContent = "您发送的是音频消息！";
			}
			// 事件推送
			else if (msgType.equals(MessageUtil.REQ_MESSAGE_TYPE_EVENT))
			{
				// 事件类型
				String eventType = requestMap.get("Event");
				// 订阅
				List<WxUserInfo> users = wxDao.find(fromUserName);
				if (eventType.equals(MessageUtil.EVENT_TYPE_SUBSCRIBE))
				{
					if(users.isEmpty())
					{
						// 获取用户信息 并存入数据库
						
						String appId = PushUtil.getValueByKey("appInfo.appId").toString();
				        String secret = PushUtil.getValueByKey("appInfo.secret").toString();
						
						//获取全局token
				        GlobalAccessToken access_token = CommonUtil.getToken(appId, secret);
				        logger.info(access_token.getAccessToken());
				        WxUserInfo user = OAuth2Util.getUserInfoByOpenID(access_token.getAccessToken(), fromUserName);
						
				        user.setLastLogin(ConstantUtil.MILLI_SECOND_FORMAT.format(new Date()));
						wxDao.add(user);
					}
					else
					{
						//已存在，则暂不处理
					}
					
				}
				// 取消订阅
				else if (eventType.equals(MessageUtil.EVENT_TYPE_UNSUBSCRIBE))
				{
					if(!users.isEmpty())
					{
						// 已取消的用户在数据库中删除
						wxDao.delete(users.get(0));
						request.getSession().removeAttribute("openId");
					}
					else
					{
						//不存在，则暂不处理
					}
					
				}
				// 自定义菜单点击事件
				else if (eventType.equals(MessageUtil.EVENT_TYPE_CLICK))
				{
					// 自定义菜单权没有开放，暂不处理该类消息
					// 事件KEY值，与创建自定义菜单时指定的KEY值对应  
					String eventKey = requestMap.get("EventKey");
					//以conf_开始，表示直接读取配置，否则需要其他处理
					if(eventKey.startsWith("conf_")){
						return getImageTextMsg(eventKey, fromUserName, toUserName);
					}
					//特殊处理
					else{
						if(eventKey.equals("VoteListEvent")){
							return getActionList(fromUserName, toUserName);
						}
						else if("UNDO".equals(eventKey)){
							respContent = "即将闪耀登场，敬请期待！";
						}
					}
					
					//推送图文信息
					//return sendImgText(fromUserName, toUserName);
				}
			}

			textMessage.setContent(respContent);
			respMessage = MessageUtil.textMessageToXml(textMessage);
		}
		catch (Exception e)
		{
			logger.error(e.getMessage());
		}

		return respMessage;
	}
	
	/**
	 * 获取投票等活动列表
	 * @param fromUserName
	 * @param toUserName
	 * @return
	 */
	private  String getActionList(String fromUserName, String toUserName){
		List<Article> articleList = new ArrayList<Article>(); 
		NewsMessage newsMessage = new NewsMessage(); 
		newsMessage.setCreateTime(new Date().getTime());  
        newsMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_NEWS);
        newsMessage.setFuncFlag(0);  
		try {
			List<Match> mats = dao.findAll();
			for (Match match : mats) {
				Article art = new Article();
				art.setTitle(match.getName());
				art.setPicUrl(PushUtil.getValueByKey("domainName")+"/images/"+match.getPublicize());
				art.setDescription(match.getDescription());
				art.setUrl(PushUtil.getValueByKey("domainName")+"/match/toMatchIndex.do?id="+match.getId()+"&curPage=1&"+WeiXinConstans.OPEN_ID+"="+fromUserName);
				articleList.add(art);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getStackTrace());
		}
		newsMessage.setFromUserName(toUserName);
		newsMessage.setToUserName(fromUserName);
		newsMessage.setArticleCount(articleList.size());  
        newsMessage.setArticles(articleList);  
        return MessageUtil.newsMessageToXml(newsMessage);
	}
	
//	private static String sendImgText(String fromUserName, String toUserName)
//	{
//		List<Article> articleList = new ArrayList<Article>(); 
//		NewsMessage newsMessage = new NewsMessage(); 
//		newsMessage.setToUserName(fromUserName);  
//        newsMessage.setFromUserName(toUserName);  
//        newsMessage.setCreateTime(new Date().getTime());  
//        newsMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_NEWS);
//        newsMessage.setFuncFlag(0);  
//		Article article1 = new Article();  
//        article1.setTitle("闪耀之城超级童模大赛\n给小孩一个展示平台");  
//        article1.setDescription("");  
//        article1.setPicUrl("http://pic1.ooopic.com/uploadfilepic/sheji/2009-05-05/OOOPIC_vip4_20090505079ae095187332ea.jpg");  
//        article1.setUrl("http://www.baidu.com");  
//
//        Article article2 = new Article();  
//        article2.setTitle("童模大赛幼儿组\n父母与小孩的赛事。 ");  
//        article2.setDescription("");  
//        article2.setPicUrl("http://pica.nipic.com/2007-11-09/2007119124513598_2.jpg");  
//        article2.setUrl("http://www.baidu.com");  
//
//        Article article3 = new Article();  
//        article3.setTitle("童模大赛儿童组\n父母与小孩的赛事。");  
//        article3.setDescription("");  
//        article3.setPicUrl("http://pic.nipic.com/2007-11-09/2007119123034857_2.jpg");  
//        article3.setUrl("http://www.baidu.com"); 
//        
//        Article article4 = new Article();  
//        article4.setTitle("童模大赛少儿组\n父母与小孩的赛事。");  
//        article4.setDescription("");  
//        article4.setPicUrl("http://pic1.ooopic.com/uploadfilepic/sheji/2009-05-05/OOOPIC_vip4_20090505079ae095187332ea.jpg");  
//        article4.setUrl("http://www.baidu.com");  
//
//        articleList.add(article1);  
//        articleList.add(article2);  
//        articleList.add(article3);  
//        articleList.add(article4);  
//        newsMessage.setArticleCount(articleList.size());  
//        newsMessage.setArticles(articleList);  
//        return MessageUtil.newsMessageToXml(newsMessage);  
//		
//	}
	
	
	private String getImageTextMsg(String key, String fromUserName, String toUserName)
	{
		List<Article> articleList = PushUtil.getArtByKey(key);
		if(articleList.isEmpty())
		{
			return "";
		}
		NewsMessage newsMessage = new NewsMessage(); 
		newsMessage.setToUserName(fromUserName);  
        newsMessage.setFromUserName(toUserName);  
        newsMessage.setCreateTime(new Date().getTime());  
        newsMessage.setMsgType(MessageUtil.RESP_MESSAGE_TYPE_NEWS);  
        newsMessage.setFuncFlag(0);  
		
        newsMessage.setArticleCount(articleList.size());  
        newsMessage.setArticles(articleList);  
        return MessageUtil.newsMessageToXml(newsMessage);  
	}
	
	@Override
	public WxUserInfo processOAuth2(WxUserInfo user)
	{
		List<WxUserInfo> users = new ArrayList<WxUserInfo>();
		try {
			users = wxDao.findForUnionId(user.getUnionid());
			
			if(users.isEmpty())
			{
				return null;
			}
		} catch (Exception e1) {
			logger.error("Read weixin user from db failed. cause by " + e1.getMessage());
		}
			
		WxUserInfo login = users.get(0);
		try {
			if(user.getNickname() != null)
			{
				login.setCity(user.getCity());
				login.setCountry(user.getCountry());
				login.setGroupid(user.getGroupid());
				login.setHeadimgurl(user.getHeadimgurl());
				login.setLanguage(user.getLanguage());
				login.setNickname(user.getNickname());
				login.setProvince(user.getProvince());
				login.setRemark(user.getRemark());
				login.setSex(user.getSex());
				login.setSubscribe_time(user.getSubscribe_time());
				login.setUnionid(user.getUnionid());
			}
			login.setLastLogin(ConstantUtil.MILLI_SECOND_FORMAT.format(new Date()));
			
			wxDao.update(login);
			
		} catch (Exception e) {
			logger.error("Update weixin userinfo failed. cause by " + e.getMessage());
		}
		
		return login;
	}

	@Override
	public void saveAll(List<WxUserInfo> users) throws Exception {
		
		wxDao.addAll(users);
	}
	
	
}
