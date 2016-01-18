package com.shiningcity.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shiningcity.dao.MatchDao;
import com.shiningcity.entity.Match;
import com.shiningcity.util.web.OutputUtil;

@Controller
@RequestMapping("/match")
public class MatchAction {
	Logger logger = Logger.getLogger(MatchAction.class);
	
	@Autowired
	private MatchDao dao;
	
	@RequestMapping("/queryMatches.do")
	public String findAll(Map<String,Object> map) throws Exception
	{
		List<Match> all = dao.findAll();
		
		map.put("matches", all);
		return "/admin/MatchList";
	}
	
	@RequestMapping("/showMatch.do")
	public String show(@RequestParam Long id, Map<String,Object> map) throws Exception
	{
		Match match = dao.find(id);
		
		map.put("match", match);
		return "/admin/MatchDetail";
	}
	
	@RequestMapping("/toMatchIndex.do")
	public String toMatchIndex(@RequestParam Long id, Map<String,Object> map) throws Exception
	{
		Match match = dao.find(id);
		map.put("match", match);
		return "/IMIEventIndex";
	}
	
	/**
	 * ================================Ajax=====================================
	 */
	
	/**
	 * Ajax 获取赛事信息
	 * @param id
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/getMatchInfo.do")
	public void getMatchInfo(@RequestParam Long id, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		Match match = dao.find(id);
		
		OutputUtil.jsonOutPut(response, null, match);
	}

	/**
	 * Ajax添加赛事 
	 * @param match
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/addMatch.do")
	public void add(Match match, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		if(match == null)
		{
			OutputUtil.errorOutPut(response, "MatchIsNull");
		}
		
		if(match.getId() == null)
		{
			Long id = null; 
			dao.add(match);
			id = match.getId();
			if(id == null || id.intValue() <= 1)
			{
				OutputUtil.errorOutPut(response, "AddFailed");
			}
		}
		else
		{
			dao.update(match);
		}
		
		OutputUtil.jsonOutPut(response, null, match);
	}
}
