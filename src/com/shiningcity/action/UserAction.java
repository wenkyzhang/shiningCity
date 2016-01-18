package com.shiningcity.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shiningcity.dao.UserInfoDao;
import com.shiningcity.entity.UserInfo;
import com.shiningcity.util.web.OutputUtil;

@Controller
@RequestMapping("/user")
public class UserAction {
	
	Logger logger = Logger.getLogger(UserAction.class);
	
	@Autowired
	private UserInfoDao userDao;
	
	/**
	 * 后台登录
	 * @param login
	 * @param passwd
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/loginAdmin.do")
	public String loginAdmin(String login, String passwd, 
			HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		UserInfo user = userDao.login(login, passwd);
		
		if(user == null)
		{
			request.setAttribute("error", "用户名或密码错误！"); 
			return "/admin/login.jsp";
		}
		
		request.getSession().setAttribute("l_user", user);
		
		return "redirect:/match/queryMatches.do";
	}

	/**
	 * 首页登录
	 * @param login
	 * @param passwd
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/login.do")
	public void login(@RequestParam String login, @RequestParam String passwd, 
			HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		UserInfo user = userDao.login(login, passwd);
		
		if(user == null)
		{
			OutputUtil.errorOutPut(response, "用户名或密码错误！"); 
			return ;
		}
		
		request.getSession().setAttribute("l_user", user);
		
		OutputUtil.jsonOutPut(response, null, user); 
	}
	
	/**
	 * 首页登出
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/logout.do")
	public void logout(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		if(request.getSession().getAttribute("l_user") != null)
		{
			request.getSession().removeAttribute("l_user");
		}
		OutputUtil.jsonOutPutNone(response); 
	}
	
	/**
	 * 验证用户名是否已注册
	 * @param login
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/validLogin.do")
	public void validLogin(@RequestParam String login, 
			HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		UserInfo user = userDao.validLogin(login);
		response.getOutputStream().write(user==null?"success".getBytes(): "已存在用户名".getBytes("utf-8"));
	}
	
	/**
	 * 用户注册
	 * @param login
	 * @param passwd
	 * @param name
	 * @param email
	 * @param phone
	 * @param sex
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/regist.do")
	public void regist(
			@RequestParam String login, 
			@RequestParam String passwd,
			@RequestParam String name,
			@RequestParam String email,
			@RequestParam String phone,
			@RequestParam String sex,
			HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		UserInfo user = new UserInfo();
		user.setLogin(login);
		user.setPasswd(passwd);
		user.setName(name);
		user.setEmail(email);
		user.setPhone(phone);
		user.setSex(sex);
		
		userDao.add(user);
		Long id = user.getId();
		if(id != null && id.intValue() > 0)
		{
			request.getSession().setAttribute("l_user", user);
			
			OutputUtil.jsonOutPut(response, JSONObject.fromObject(user)); 
		}
		else
		{
			OutputUtil.errorOutPut(response, "注册失败！"); 
		}
		
	}
}
