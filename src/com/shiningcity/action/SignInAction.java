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

import com.shiningcity.dao.ActivityDao;
import com.shiningcity.dao.ChildModelDao;
import com.shiningcity.dao.MatchAreaDao;
import com.shiningcity.dao.MatchDao;
import com.shiningcity.dao.SignDao;
import com.shiningcity.entity.ChildModel;
import com.shiningcity.entity.Match;
import com.shiningcity.entity.Pager;
import com.shiningcity.entity.match.Activity;
import com.shiningcity.entity.match.Sign;
import com.shiningcity.util.web.OutputUtil;

/**
 * 签到Action
 * 
 * 
 * @author wenky
 *
 */
@Controller
public class SignInAction {
	
	private Logger logger = Logger.getLogger(SignInAction.class);
	
	@Autowired
	private MatchDao mDao;
	
	@Autowired
	private MatchAreaDao maDao;
	
	@Autowired
	private SignDao sDao;
	
	@Autowired
	private ActivityDao aDao;
	
	@Autowired
	private ChildModelDao cmDao;
	
	/**
	 * 签到空页面
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/admin/indexSign.do")
	public String index(Map<String, Object> map)throws Exception
	{
		List<Match> matchs = mDao.findAll();
		
		
		Pager<Sign> pager = new Pager<Sign>(20);
		
		Match match = matchs.size() > 0? matchs.get(0):null;
		
		Activity activity = new Activity();
		activity.setMatch(match);
		
//		List<Activity> acs = aDao.find(activity);
		
		/**
		 * 用于页面不报错 
		 */
		activity.setId(0L);
		
		map.put("matches", matchs);
		//map.put("match", match);
		//map.put("activity", acs.size() > 0? acs.get(0):activity);
		map.put("signs", pager.getData());
		map.put("pager", pager);
		return "/admin/listSign";
	}
	
	/**
	 * 查看签到列表页面
	 * 
	 * @param id  活动ID
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/admin/listSign.do")
	public String list(Long id, int curPage, Map<String, Object> map)throws Exception
	{
		logger.info("Request activity id is " + id);
		
		List<Match> matchs = mDao.findAll();
		
		
		Activity activity = aDao.find(id);
		
		if(activity == null)
		{
			return "error";
		}
		
		if(curPage < 1)
		{
			curPage = 1;
		}
		
		Sign sign = new Sign();
		sign.setActivity(activity);
		
		Pager<Sign> pager = new Pager<Sign>(20);
		pager.setCurPage(curPage);
		pager.setCondition(sign);
		
		pager = sDao.findByPager(pager);
		
		map.put("matches", matchs);
		map.put("match", activity.getMatch());
		map.put("activity", activity);
		map.put("signs", pager.getData());
		map.put("pager", pager);
		
		return "/admin/listSign";
	}
	
	/**
	 * 签到预处理
	 * @param id 赛事ID
	 * @param map
	 * @return
	 * @throws Exception
	 */
	public String signPre(Long id, Map<String, Object> map)throws Exception
	{
		Match match = mDao.find(id);
		if(match == null)
		{
			return "error";
		}
		
		Activity activity = new Activity();
		activity.setMatch(match);
		
		String now = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date());
		activity.setStartDate(now);
		activity.setEndDate(now);
		
		
		List<Activity> acs = aDao.find(activity);
		
		if(acs.size() == 0)
		{
			return "error";
		}
		
		
		
		map.put("activitys", acs);
		map.put("match", match);
		
		return "/weixin/sign";
	}
	
	
	
	/**
	 * ================================Ajax=====================================
	 */
	/**
	 * 签到
	 * @param sign
	 * @param map
	 * @return
	 *   msg:
	 *     NoActivity:没有活动
	 *     toSignUp:跳转到报名页面
	 *     repeatSign:重复签到
	 * @throws Exception
	 */
	@RequestMapping("/admin/sign.do")
	public void sign(Sign sign, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		String phone = sign.getPhone();
		Activity activity = sign.getActivity();
		
		if(activity == null || activity.getId() == null)
		{
			OutputUtil.errorOutPut(response, "NoActivity");
			return ;
		}
		
		List<Activity> acs = aDao.find(activity);
		if(acs.size() != 1)
		{
			OutputUtil.errorOutPut(response, "NoActivity");
			return ;
		}
		
		
		List<ChildModel> cms = cmDao.validPhone(phone, acs.get(0).getMatch().getId());
		if(cms.size() < 1)
		{
			OutputUtil.errorOutPut(response, "toSignUp");
			return ;
		}
		
		sign.setName(cms.get(0).getName());
		sign.setSignDate(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		
		List<Sign> ss = sDao.find(sign);
		if(ss.size() != 0)
		{
			OutputUtil.errorOutPut(response, "repeatSign");
			return ;
		}
		
		sign.setModel(cms.get(0));
		sDao.add(sign);
		
		OutputUtil.jsonOutPut(response, null, sign);
	}
	
}
