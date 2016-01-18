package com.shiningcity.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiningcity.dao.AreaDao;
import com.shiningcity.dao.MatchAreaDao;
import com.shiningcity.dao.MatchDao;
import com.shiningcity.entity.Match;
import com.shiningcity.entity.Pager;
import com.shiningcity.entity.match.Area;
import com.shiningcity.entity.match.MatchArea;
import com.shiningcity.util.web.OutputUtil;

@Controller
public class AreaAction {
	
	private static Logger logger = Logger.getLogger(AreaAction.class);
	
	@Autowired
	private AreaDao dao;
	
	@Autowired
	private MatchDao mDao;
	
	@Autowired
	private MatchAreaDao maDao;

	@RequestMapping("/admin/queryArea.do")
	public String show(int curPage,  Map<String,Object> map) throws Exception
	{
		logger.info(String.format("curPage number is %d", curPage));
		
		// 处理错误参数 
		if(curPage <= 1)
		{
			curPage = 1;
		}
		
		Pager<Area> pager = new Pager<Area>(12);
		pager.setCurPage(curPage);
		
		pager.setCondition(new Area());
		pager = dao.findByPager(pager);
		
		map.put("areas", pager.getData());
		map.put("pager", pager);
		
		return "/admin/Areas";
	}
	
	@RequestMapping("/admin/addArea.do")
	public String add(Area area, int curPage,  Map<String,Object> map) throws Exception
	{
		logger.info(String.format("curPage number is %d", curPage));
		logger.info("area number is " + area);
		
		
		if(area != null && area.getId() != null)
		{
			dao.update(area);
		}
		else
		{
			dao.add(area);
		}
		
		
		// 处理错误参数 
		if(curPage <= 1)
		{
			curPage = 1;
		}
		
		Pager<Area> pager = new Pager<Area>(12);
		pager.setCurPage(curPage);
		
		pager.setCondition(new Area());
		pager = dao.findByPager(pager);
		
		map.put("area", area);
		map.put("areas", pager.getData());
		map.put("pager", pager);
		
		return "/admin/Areas";
	}
	
	/**
	 * ================================Ajax=====================================
	 */
	
	/**
	 * 查询所有的合作伙伴 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/query/queryAreas.do")
	public void queryAreas(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		List<Area> all = dao.findAll();
		OutputUtil.jsonOutPut(response, null, all);
	}
	
	public void saveMatch(Match match, String areas, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		Match m = mDao.find(match.getId());
		
		if(areas == null || "".equals(areas))
		{
			OutputUtil.errorOutPut(response, "赛区未选择");
			return;
		}
		
		String[] ids = areas.split(",");
		Area area = null;
		MatchArea ma = null;
		for(String id : ids)
		{
			area = dao.find(Long.parseLong(id));
			ma = new MatchArea();
			ma.setArea(area);
			ma.setMatch(m);
		}
	}
	/**
	 * 查询赛区详情
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/queryAreaDetailsForAjax.do")
	public void queryAreaForAjax(Long id, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		Area area = dao.delete(id);
		OutputUtil.jsonOutPut(response, null, area); 
	}
	/**
	 * 删除赛区
	 * @param id
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/deleteAreaForAjax.do")
	public void deleteAreaForAjax(Long id, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		Area area = dao.delete(id);
		OutputUtil.jsonOutPut(response, null, area); 
	}
}
