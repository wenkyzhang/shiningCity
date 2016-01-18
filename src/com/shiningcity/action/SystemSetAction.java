package com.shiningcity.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiningcity.dao.SystemSetDao;
import com.shiningcity.entity.SystemSet;
import com.shiningcity.util.web.OutputUtil;

@Controller
public class SystemSetAction {
	
	@Autowired
	private SystemSetDao dao;
	/**
	 * 显示所有系统参数
	 * @param map
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/admin/showSystemSet.do")
	public String show(Map<String, Object> map) throws Exception
	{
		
		List<SystemSet> sets = dao.findAll();
		
		dao.findValue("weixinmsg");
		
		map.put("sets", sets);
		
		return "/admin/systemSet";
	}
	
	
	/**
	 * ================================Ajax=====================================
	 */
	
	@RequestMapping("/admin/saveSystemSet.do")
	public void save(SystemSet set, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		if(set == null)
		{
			OutputUtil.errorOutPut(response, "参数错误！");
			return ;
		}
		else if(set != null && set.getId() != null)
		{
			dao.update(set);
		}
		else
		{
			dao.add(set);
		}
		
		OutputUtil.jsonOutPut(response, null, set);
	}
	
	/**
	 * Ajax获取指定Id的Content
	 * @param id
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/admin/getSystemSet.do")
	public void get(Long id, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		if(id == null)
		{
			OutputUtil.errorOutPut(response, "参数错误！");
			return ;
		}
		
		OutputUtil.jsonOutPut(response, null, dao.find(id));
	}
	
	/**
	 * Ajax获取指定key的Content
	 * @param key
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/admin/getSystemSetForKey.do")
	public void get(String key, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		if(key == null)
		{
			OutputUtil.errorOutPut(response, "参数错误！");
			return ;
		}
		
		OutputUtil.jsonOutPut(response, null, dao.findSet(key));
	}
}
