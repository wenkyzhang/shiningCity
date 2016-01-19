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

import com.shiningcity.dao.AllianceCaseDao;
import com.shiningcity.entity.AllianceCase;
import com.shiningcity.entity.UserInfo;
import com.shiningcity.util.web.OutputUtil;

@Controller
@RequestMapping("")
public class AllianceCaseAction {
	
	Logger logger = Logger.getLogger(AllianceCaseAction.class);
	
	@Autowired
	private AllianceCaseDao dao;
	
	/**
	 * 查询所有联合机构信息
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/queryCases.do")
	public String findAll(Map<String,Object> map) throws Exception
	{
		List<AllianceCase> all = dao.findAll();
		
		if(all == null )
		{
			return "/error.jsp";
		}
		
		map.put("cases", all);
		return "/admin/CaseList";
	}
	
	/**
	 * 查看指定联合机构信息
	 * @param id
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/queryCase.do")
	public String queryCase(Long id, Map<String,Object> map) throws Exception
	{
		AllianceCase aCase = dao.find(id);
		
		map.put("aCase", aCase);
		return "/case";
	}
	
	/**
	 * ================================Ajax=====================================
	 * 
	 */
	
	/**
	 * 查询所有的国际联动信息 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/queryCasesForAjax.do")
	public void queryCasesForAjax(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		List<AllianceCase> all = dao.findAll();
		OutputUtil.jsonOutPut(response, null, all); 
	}
	
	/**
	 * 查询国际联动信息详情
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/queryCaseDetailsForAjax.do")
	public void queryCaseForAjax(Long id, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		AllianceCase aCase = dao.find(id);
		OutputUtil.jsonOutPut(response, null, aCase); 
	}
	
	/**
	 * 添加国际联动信息
	 * @param units
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/admin/addOrUpdateCase.do")
	public void addOrUpdateUnits(AllianceCase aCase, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		Object user = request.getSession().getAttribute("l_user");
		
		if(user == null)
		{
			OutputUtil.errorOutPut(response, "NOSESSION");
			return;
		}
		
		if(aCase == null )
		{
			OutputUtil.errorOutPut(response, "参数异常!");
			return;
		}
		
		if(aCase.getId() != null)
		{
			if(aCase.getId().intValue() > 0)
			{
				dao.update(aCase);
			}
			else{
				OutputUtil.errorOutPut(response, "ID参数异常!");
				return;
			}
		}
		else
		{
			aCase.setAuthor(((UserInfo)user).getLogin());
			aCase.setCreateDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			dao.add(aCase);
		}
		
		OutputUtil.jsonOutPut(response, null, aCase); 
	}
	
	/**
	 * 删除国际联动信息
	 * @param id
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/admin/deleteCaseForAjax.do")
	public void deleteCaseForAjax(Long id, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		Object user = request.getSession().getAttribute("l_user");
		
		if(user == null)
		{
			OutputUtil.errorOutPut(response, "NOSESSION");
			return;
		}
		
		AllianceCase aCase = dao.delete(id);
		OutputUtil.jsonOutPut(response, null, aCase); 
	}
}
