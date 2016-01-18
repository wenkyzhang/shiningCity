package com.shiningcity.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiningcity.dao.MatchAreaDao;
import com.shiningcity.dao.ModelDao;
import com.shiningcity.dao.VoteDao;
import com.shiningcity.entity.Model;
import com.shiningcity.entity.Vote;
import com.shiningcity.entity.match.MatchArea;
import com.shiningcity.util.ConfigUtil;
import com.shiningcity.util.ConstantUtil;
import com.shiningcity.util.DateUtil;
import com.shiningcity.util.web.OutputUtil;
import com.shiningcity.util.web.WebUtil;

@Controller
@RequestMapping("/vote")
public class VoteAction {
	private static Logger logger = Logger.getLogger(VoteAction.class);
	
	@Autowired
	private VoteDao voteDao;
	
	@Autowired
	private ModelDao modelDao;
	
	@Autowired
	private MatchAreaDao areaDao;
	
	/**
	 * ================================Ajax=====================================
	 */
	
	/**
	 * 查询所有的合作伙伴 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/query.do")
	public void queryUnitsForAjax(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		JSONObject jo = new JSONObject();
		OutputUtil.jsonOutPut(response, null, jo); 
	}
	
	/**
	 * 投票
	 * @param vote
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/vote.do")
	public void vote(Vote vote, Long areaId, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		String openId = (String) request.getSession().getAttribute("openId");
		
		if(openId == null || areaId == null)
		{
			OutputUtil.errorOutPut(response, "页面已失效，请刷新页面或重新进入后再投票！");
			return;
		}
		
		
		MatchArea area = areaDao.find(areaId);
		if(area == null)
		{
			OutputUtil.errorOutPut(response, "请求参数错误，请刷新页面重试。谢谢！");
			return;
		}
		
		
		String now = ConstantUtil.DATE_FORMAT.format(new Date());
		
		if(now.compareTo(area.getVoteStart()) < 0)
		{
			OutputUtil.errorOutPut(response, String.format("赛区投票还没开始，请关注我们其他的活动。\n投票起止时间：%s 至 %s",area.getVoteStart(), area.getVoteEnd()));
			return;
		}
		
		if( now.compareTo(area.getVoteEnd()) > 0)
		{
			OutputUtil.errorOutPut(response, "赛区投票已经结束，请关注我们其他的活动。谢谢！");
			return;
		}
		
		JSONObject jo = new JSONObject();
		if(!hasVote(request, openId))
		{
			vote.setUserId(openId);
			vote.setVoteTime(ConstantUtil.MILLI_SECOND_FORMAT.format(new Date()));
			vote.setVoteDate(ConstantUtil.DATE_FORMAT.format(new Date()));
			vote.setIp(getRemoteHost(request));
			
			Long id = -1l;
			voteDao.add(vote);
			id = vote.getId();
			if(id < 1)
			{
				OutputUtil.jsonOutPut(response, "投票失败！");
			}
			else
			{
				Model model = modelDao.find(vote.getChild().getId());
				
				jo.put("msg", "投票成功!");
				jo.put("votes", model.getVotes());
				
				int votes = WebUtil.getVotes(request);
				int cycle = DateUtil.toNextDay();
				WebUtil.setCookie(response, ConfigUtil.VOTE_KEY, String.valueOf(votes + 1), cycle);
				OutputUtil.jsonOutPut(response, jo);
			}
		}
		else
		{
			OutputUtil.outPut(response,"error", "你已经投过票了，请明天再来。"); 
		}
	}
	
	/**
	 * 获取客户端IP
	 * @param request
	 * @return
	 */
	private String getRemoteHost(HttpServletRequest request){
	    String ip = request.getHeader("x-forwarded-for");
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
	        ip = request.getHeader("Proxy-Client-IP");
	    }
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
	        ip = request.getHeader("WL-Proxy-Client-IP");
	    }
	    if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
	        ip = request.getRemoteAddr();
	    }
	    return ip.equals("0:0:0:0:0:0:0:1")?"127.0.0.1":ip;
	}
	
	/**
	 * 判断用户是否能够继续投票
	 * @param request
	 * @return
	 */
	private boolean hasVote(HttpServletRequest request, String userId) {
		int limit = 1;
		try {
			limit = Integer.parseInt(ConfigUtil.getParam(ConfigUtil.VOTE_LIMIT));
		} catch (Exception e) {
			logger.error("Read vote limit failed. please check it.");
		}
		
		Vote vote = new Vote();
		vote.setUserId(userId);
		vote.setVoteDate(ConstantUtil.DATE_FORMAT.format(new Date()));
		
		List<Vote> votes = new ArrayList<Vote>();
		try {
			votes = voteDao.find(vote);
		} catch (Exception e) {
			logger.error("Read vote data failed. cause by " + e.getMessage());
		}
		
		return votes.size() >= limit;
	}
	
	public static void main(String[] args) {
		System.out.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS").format(new Date()));
	}
}
