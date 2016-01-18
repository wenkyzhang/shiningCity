package com.shiningcity.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiningcity.dao.NewsDao;
import com.shiningcity.entity.News;
import com.shiningcity.util.web.OutputUtil;

@Controller
@RequestMapping("/news")
public class NewsAction {
	
	Logger logger = Logger.getLogger(NewsAction.class);
	
	@Autowired
	private NewsDao dao;
	
	/**
	 * ================================Ajax=====================================
	 * 
	 */
	
	/**
	 * 查询所有的联盟单位 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/queryNewsForAjax.do")
	public void queryUnitsForAjax(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		List<News> all = dao.findAll();
		OutputUtil.jsonOutPut(response, null, all); 
	}
}
