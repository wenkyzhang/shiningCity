package com.shiningcity.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiningcity.dao.AllianceServicesDao;
import com.shiningcity.dao.InformationDao;
import com.shiningcity.dao.MatchDao;
import com.shiningcity.dao.MentorGroupDao;
import com.shiningcity.dao.NewsDao;
import com.shiningcity.dao.ParterDao;
import com.shiningcity.dao.UnitsDao;
import com.shiningcity.util.web.OutputUtil;

@Controller
@RequestMapping("/index")
public class IndexAction {
Logger logger = Logger.getLogger(IndexAction.class);
	
	@Autowired
	private ParterDao parterDao;
	@Autowired
	private UnitsDao unitsDao;
	@Autowired
	private NewsDao newsDao;
	@Autowired
	private MentorGroupDao groupDao;
	@Autowired
	private AllianceServicesDao servicesDao;
	
	@Autowired
	private InformationDao infoDao;
	
	@Autowired
	private MatchDao matchDao;
	
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
		jo.put("parter", parterDao.findAll());
		jo.put("units", unitsDao.findAll());
		/**
		 * 返回最新添加的30条新闻 
		 */
		jo.put("news", newsDao.find(30));
		jo.put("mentorgroup", groupDao.findAll());
		jo.put("services", servicesDao.findAll());
		
		Object matchs = OutputUtil.fromObject(matchDao.findLastMatch());
		
		jo.put("matchs", matchs);
		OutputUtil.jsonOutPut(response, null, jo); 
	}
	
	/**
	 * 查询赛程和欧洲游学
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/queryInfor.do")
	public void queryInforForAjax(Long type, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		if(type == null || type.intValue() < 0)
		{
			OutputUtil.errorOutPut(response, "Type is error. type = " + type);
			return;
		}
		
		OutputUtil.jsonOutPut(response, null, infoDao.getInforForType(type.intValue(),30));
	}
}
