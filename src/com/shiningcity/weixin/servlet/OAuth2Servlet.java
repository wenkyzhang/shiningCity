package com.shiningcity.weixin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.shiningcity.entity.WxUserInfo;
import com.shiningcity.weixin.constans.WeiXinConstans;
import com.shiningcity.weixin.service.CoreService;
import com.shiningcity.weixin.utils.OAuth2Util;

public class OAuth2Servlet extends HttpServlet
{
	private static Logger logger = Logger.getLogger(OAuth2Servlet.class);
    
    private static final long serialVersionUID = 1L;
    
    @Autowired
	CoreService service;
    
    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        // 用户同意授权后，能获取到code
        String code = request.getParameter("code");
        String state = request.getParameter("state");
        logger.info(String.format("Parameters: <code=%s>,<state=%s>", code, state));
        
        WxUserInfo user = OAuth2Util.getCurrentUser(code, state, request);
        if(user == null)
        {
        	request.getRequestDispatcher("/wexinAttend.jsp").forward(request, response);
        	return;
        }
        logger.info("Get the user is " + user.toString());
        
		user = service.processOAuth2(user);
		if(user == null)
		{
			// 去关注页面
			request.getRequestDispatcher("/wexinAttend.jsp").forward(request, response);
			return;
		}
        
		request.getSession().setAttribute("openId", user.getOpenid());
		request.getSession().setAttribute("wx_user", user);
        request.setAttribute(WeiXinConstans.OPEN_ID, user.getOpenid());
        request.setAttribute(WeiXinConstans.NICKNAME, user.getNickname());
        request.setAttribute(WeiXinConstans.WEIXINUSER, user);
        request.getRequestDispatcher("/model/showModelByArea.do").forward(request, response);
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
    {
        doGet(request,response);
    }
    
}
