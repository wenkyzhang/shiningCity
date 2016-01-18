package com.shiningcity.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiningcity.entity.WxUserInfo;
import com.shiningcity.weixin.constans.WeiXinConstans;
import com.shiningcity.weixin.entity.GlobalAccessToken;
import com.shiningcity.weixin.service.CoreServiceInter;
import com.shiningcity.weixin.utils.CommonUtil;
import com.shiningcity.weixin.utils.OAuth2Util;
import com.shiningcity.weixin.utils.PushUtil;
import com.shiningcity.weixin.utils.SignUtil;
import com.shiningcity.weixin.utils.UserUtils;

@Controller
@RequestMapping("/wx")
public class WXAction {
	
	private static Logger logger = Logger.getLogger(WXAction.class);
	
	@Autowired
	CoreServiceInter service;
	
	@RequestMapping("/getMsg.do")
	public void core(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		logger.info(basePath+ ","+request.getQueryString());
		// 消息的接收、处理、响应
		// 微信加密签名
		String signature = request.getParameter("signature");
		// 时间戳
		String timestamp = request.getParameter("timestamp");
		// 随机数
		String nonce = request.getParameter("nonce");

		logger.info("doPost parameter:signature:" + signature + ","
				+ timestamp + "," + nonce);
		// 将请求、响应的编码均设置为UTF-8（防止中文乱码）
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		// 响应消息
		PrintWriter out = response.getWriter();
		if (SignUtil.checkSignature(signature, timestamp, nonce))
		{

			logger.info("doPost checkSignature true.");

            // 调用核心业务类接收消息、处理消息
 			//CoreService coreSevice = new CoreService();
			String respMessage = service.processRequest(request, response);

			logger.info("response:" + respMessage);
			out.print(respMessage);
		}
		else
		{
			response.sendError(401);
		}
		out.close();
		out = null;
	}
	
	@RequestMapping("/oauth2.do")
	public String oAuth2(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException
    {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        // 用户同意授权后，能获取到code
        String code = request.getParameter("code");
        String state = request.getParameter("state");
        logger.info(String.format("Parameters: <code=%s>,<state=%s>", code, state));
        
        WxUserInfo user = OAuth2Util.getCurrentUser(code, state, request);
        
        logger.info("Get user is " + (user == null ? "null" : user.getOpenid()));
        if(user == null)
        {
        	return "/wexinAttend";
        }
        
		user = service.processOAuth2(user);
		logger.info("Get user is " + (user == null ? "null" : user.getOpenid()));
		if(user == null)
		{
			
			return "/wexinAttend";
		}
        
		logger.info("user info get success. openId is " + user.getOpenid() + " and unionId is " + user.getUnionid());
		request.getSession().setAttribute("openId", user.getOpenid());
		request.getSession().setAttribute("wx_user", user);
        request.setAttribute(WeiXinConstans.OPEN_ID, user.getOpenid());
        request.setAttribute(WeiXinConstans.NICKNAME, user.getNickname());
        request.setAttribute(WeiXinConstans.WEIXINUSER, user);
        return "redirect:/model/showModelByArea.do?" + request.getQueryString();
    }
	
	@RequestMapping("/initUser.do")
	public String initUser(HttpServletRequest request, HttpServletResponse response)
	        throws Exception
    {
		request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
		String appId = PushUtil.getValueByKey("appInfo.appId").toString();
        String secret = PushUtil.getValueByKey("appInfo.secret").toString();
		
		//获取全局token
        GlobalAccessToken accessToken = CommonUtil.getToken(appId, secret);
        
        String[] users = UserUtils.getAllUserId(accessToken.getAccessToken());
        List<String> list = Arrays.asList(users);
        int len = 100;
        int end = len;
        List<WxUserInfo> us = new ArrayList<WxUserInfo>();
        for(int i=0;i<users.length; i+= len)
        {
        	if((i+len) >= users.length)
        	{
        		end = users.length;
        	}
        	else
        	{
        		end = i + len;
        	}
        	us.addAll(OAuth2Util.getUserInfoByIDs(accessToken.getAccessToken(), list.subList(i, end)));
        }
        
        
        service.saveAll(us);
    	
    	return "success";
    }
	
	public static void main(String[] args) throws Exception {
		String appId = PushUtil.getValueByKey("appInfo.appId").toString();
        String secret = PushUtil.getValueByKey("appInfo.secret").toString();
		
		//获取全局token
        GlobalAccessToken accessToken = CommonUtil.getToken(appId, secret);
        
        String[] users = UserUtils.getAllUserId(accessToken.getAccessToken());
        List<String> list = Arrays.asList(users);
        int len = 100;
        int end = len;
        List<WxUserInfo> us = new ArrayList<WxUserInfo>();
        for(int i=0;i<users.length; i+= len)
        {
        	if((i+len) >= users.length)
        	{
        		end = users.length;
        	}
        	else
        	{
        		end = i + len;
        	}
        	us.addAll(OAuth2Util.getUserInfoByIDs(accessToken.getAccessToken(), list.subList(i, end)));
        }
        
//    	List<WxUserInfo> us = OAuth2Util.getUserInfoByIDs(accessToken.getAccessToken(), users);
    	
        System.out.println("total size :" + us.size());
    	for(WxUserInfo ui : us )
    	{
    		System.out.println(String.format("openId:%s  unionid:%s", ui.getOpenid(), ui.getUnionid()));
    	}
	}
}
