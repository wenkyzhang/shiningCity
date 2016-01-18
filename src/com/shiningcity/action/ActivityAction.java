package com.shiningcity.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.shiningcity.dao.ActivityDao;
import com.shiningcity.dao.MatchDao;
import com.shiningcity.entity.Match;
import com.shiningcity.entity.Pager;
import com.shiningcity.entity.UserInfo;
import com.shiningcity.entity.match.Activity;
import com.shiningcity.util.web.OutputUtil;

@Controller
public class ActivityAction {
	
	private Logger logger = Logger.getLogger(ActivityAction.class);
	
	@Autowired
	private ActivityDao dao;
	
	@Autowired
	private MatchDao matchDao;
	
	
	@RequestMapping("/admin/queryActivity.do")
	public String show(int id, int curPage,  Map<String,Object> map) throws Exception
	{
		logger.info(String.format("curPage number is %d and matchId is %d", curPage, id));
		
		// 处理错误参数 
		if(curPage <= 1)
		{
			curPage = 1;
		}
		
		Pager<Activity> pager = new Pager<Activity>(12);
		pager.setCurPage(curPage);
		
		Activity activity = new Activity();
		Match match = matchDao.find(new Long(id));
		
		if(match == null)
		{
			return "error";
		}
		
		activity.setMatch(match);
		pager.setCondition(activity);
		pager = dao.findByPager(pager);
		
		map.put("activitys", pager.getData());
		map.put("match", match);
		map.put("pager", pager);
		
		return "/admin/Activitys";
	}
	
	@RequestMapping("/admin/addActivity.do")
	public String add(Activity activity, int curPage, Map<String,Object> map) throws Exception{
		logger.info(String.format("curPage number is %d", curPage));
		logger.info("area number is " + activity);
		
		
		if(activity != null && activity.getId() != null)
		{
			dao.update(activity);
		}
		else
		{
			HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
			UserInfo user = (UserInfo) request.getSession().getAttribute("l_user");
			if(user == null)
			{
				logger.info("No find web login id. return to login page.");
				return "login";
			}
			activity.setCreater(user.getLogin());
			activity.setCreateDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			
			dao.add(activity);
		}
		
		
		// 处理错误参数 
		if(curPage <= 1)
		{
			curPage = 1;
		}
		
		Pager<Activity> pager = new Pager<Activity>(12);
		pager.setCurPage(curPage);
		
		pager.setCondition(new Activity());
		pager = dao.findByPager(pager);
		
		map.put("activity", activity);
		map.put("match", matchDao.find(activity.getMatch().getId()));
		map.put("areas", pager.getData());
		map.put("pager", pager);
		
		return "/admin/Activitys";
	}
	
	/**
	 * ================================Ajax=====================================
	 */
	
	@RequestMapping("/admin/deleteActivity.do")
	public void delete(Long id, HttpServletRequest request, HttpServletResponse response) throws Exception{  
	    try{  
	    	
	    	Activity activity = dao.delete(id);
	    	
	        OutputUtil.outPut(response, "success",  String.format("删除%s成功", activity.getName()));
	    }catch (Exception e) {  
	        OutputUtil.errorOutPut(response, "系统异常");  
	    }  
	} 
	
	/**
	 * 根据赛事查找活动
	 * @param id 赛事ID
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/admin/findActivitys.do")
	public void findList(Long id, HttpServletRequest request, HttpServletResponse response) throws Exception{  
	    try{  
	    	Activity activity = new Activity();
	    	Match match = new Match();
	    	match.setId(id);
	    	
	    	activity.setMatch(match);
	    	
	    	activity.setStartDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
	    	activity.setEndDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
	    	
	    	List<Activity> activitys = dao.find(activity);
	    	
	        OutputUtil.jsonOutPut(response, null, activitys);
	    }catch (Exception e) {  
	        OutputUtil.errorOutPut(response, "系统异常");  
	    }  
	} 
}
