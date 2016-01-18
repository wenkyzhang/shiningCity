package com.shiningcity.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.shiningcity.dao.ChildModelDao;
import com.shiningcity.dao.MatchDao;
import com.shiningcity.entity.ChildModel;
import com.shiningcity.entity.Match;
import com.shiningcity.entity.Pager;

@Controller
@RequestMapping("/child")
public class ChildModelAction {
	Logger logger = Logger.getLogger(ChildModelAction.class);
	
	//@Autowired
	//private MatchBiz modelBiz;
	
	@Autowired
	private ChildModelDao childDao;
	
	@Autowired
	private MatchDao dao;
	
	@RequestMapping("/showMatchPage.do")
	public String show(@RequestParam Long id, @RequestParam Pager<ChildModel> pager, Map<String,Object> map) throws Exception
	{
		logger.info("Show match page for id = " + id);
		if(id == null || id.intValue() < 0)
		{
			logger.error("Match id is invalid. dispatch to error page.");
			return "error";
		}
		
		Match match = dao.find(id);//modelBiz.findById(id);
		
		if(pager == null)
		{
			pager = new Pager<ChildModel>();
		}
		
		ChildModel model = new ChildModel();
		model.setMatch(match);
		pager.setCondition(model);
		childDao.findByPager(pager);
		
		map.put("match", match);
		map.put("pager", pager);
		return "/admin/MatchDetail";
	}
	
	@RequestMapping("/showMatch.do")
	public String show(@RequestParam Long id, Map<String,Object> map) throws Exception
	{
		logger.info("Show match Detail page for id = " + id);
		
		if(id == null || id.intValue() < 0)
		{
			logger.error("Match id is invalid. dispatch to error page.");
			return "error";
		}
		
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		int curPage = 1;
		String page = request.getParameter("curPage");
		if(page != null)
		{
			try{
				curPage = Integer.parseInt(page);
			}
			catch(NumberFormatException e)
			{
				logger.error("Get the curPage is invalid, use the default(1). page=" + curPage);
			}
		}
		
//		Match match = modelBiz.findById(id);
		Match match = dao.find(id);
		
		ChildModel model = new ChildModel();
		model.setMatch(match);
		Pager<ChildModel> pager = new Pager<ChildModel>();
		pager.setCurPage(curPage);
		pager.setCondition(model);
		
		childDao.findByPager(pager);
		
		map.put("match", match);
		map.put("pager", pager);
		return "/admin/MatchDetail";
	}
	
}
