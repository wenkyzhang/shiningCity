package com.shiningcity.web.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.filter.OncePerRequestFilter;

import com.shiningcity.entity.UserInfo;
import com.shiningcity.util.ConstantUtil;

public class LoginFilter extends OncePerRequestFilter {
	
	private Logger logger = Logger.getLogger(LoginFilter.class);

	@Override
	protected void doFilterInternal(HttpServletRequest req,
			HttpServletResponse resp, FilterChain chain)
			throws ServletException, IOException {
		
		// 不过滤的uri  
//        String[] notFilter =new String[] {
//        		"/images", "/js", "/css", "/login/tologin", "/login/mainframe", "/user/exist",  
//                "/user/checkPassword", "/signcode"}; 
		
		UserInfo userinfo = (UserInfo) req.getSession().getAttribute(ConstantUtil.KEY_LOGIN_USER);
		
		if(userinfo == null)
		{
			logger.warn("No user login.");
		}
		
//		for(String url : notFilter)
//		{
//			logger.info("ignore url : " + url);
//		}
	}

}
