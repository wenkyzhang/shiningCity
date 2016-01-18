package com.shiningcity.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiningcity.dao.AllianceInternalDao;
import com.shiningcity.entity.AllianceInternal;
import com.shiningcity.util.web.OutputUtil;

@Controller
@RequestMapping("")
public class AllianceInternalAction {

	Logger logger = Logger.getLogger(AllianceInternalAction.class);
	
	@Autowired
	private AllianceInternalDao dao;
	
	/**
	 * 查询所有联合机构信息
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/queryInternals.do")
	public String findAll(Map<String,Object> map) throws Exception
	{
		List<AllianceInternal> all = dao.findAll();
		
		if(all == null )
		{
			return "/error.jsp";
		}
		
		map.put("internals", all);
		return "/admin/InternalList";
	}
	
	/**
	 * 查看指定联合机构信息
	 * @param id
	 * @param map
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/queryInternal.do")
	public String queryInternal(Long id, Map<String,Object> map) throws Exception
	{
		AllianceInternal internal = dao.find(id);
		
		map.put("internal", internal);
		return "/internal";
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
	@RequestMapping("/queryInternalsForAjax.do")
	public void queryInternalsForAjax(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		List<AllianceInternal> all = dao.findAll();
		OutputUtil.jsonOutPut(response, null, all); 
	}
	
	/**
	 * 查询国际联动信息详情
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/queryInternalDetailsForAjax.do")
	public void queryInternalForAjax(Long id, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		AllianceInternal internal = dao.find(id);
		OutputUtil.jsonOutPut(response, null, internal); 
	}
	
	/**
	 * 添加国际联动信息
	 * @param units
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/admin/addOrUpdateInternal.do")
	public void addOrUpdateUnits(AllianceInternal internal, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		if(internal == null )
		{
			OutputUtil.errorOutPut(response, "参数异常!");
			return;
		}
		
		if(internal.getId() != null)
		{
			if(internal.getId().intValue() > 0)
			{
				dao.update(internal);
			}
			else{
				OutputUtil.errorOutPut(response, "ID参数异常!");
				return;
			}
		}
		else
		{
			dao.add(internal);
		}
		
		OutputUtil.jsonOutPut(response, null, internal); 
	}
	
	/**
	 * 删除国际联动信息
	 * @param id
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/admin/deleteInternalForAjax.do")
	public void deleteInternalForAjax(Long id, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		AllianceInternal internal = dao.delete(id);
		OutputUtil.jsonOutPut(response, null, internal); 
	}
}