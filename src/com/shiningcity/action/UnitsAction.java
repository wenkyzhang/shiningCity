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

import com.shiningcity.dao.UnitsDao;
import com.shiningcity.entity.Units;
import com.shiningcity.util.web.OutputUtil;

@Controller
@RequestMapping("/units")
public class UnitsAction {
	Logger logger = Logger.getLogger(UnitsAction.class);
	
	@Autowired
	private UnitsDao dao;
	
	@RequestMapping("/queryUnits.do")
	public String findAll(Map<String,Object> map) throws Exception
	{
		List<Units> all = dao.findAll();
		
		if(all == null )
		{
			//TODO 
			//return "logo";
		}
		
		map.put("unitses", all);
		return "/admin/UnitsList";
	}
	
	@RequestMapping("/showUnits.do")
	public String show(@RequestParam Long id, Map<String,Object> map) throws Exception
	{
		Units match = dao.find(id);
		
		map.put("units", match);
		return "/admin/UnitsDetail";
	}
	
	
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
	@RequestMapping("/queryUnitsForAjax.do")
	public void queryUnitsForAjax(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		List<Units> all = dao.findAll();
		OutputUtil.jsonOutPut(response, null, all); 
	}
	/**
	 * 添加成员单位
	 * @param units
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/addOrUpdateUnits.do")
	public void queryUnitsForAjax(Units units, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		
		if(units == null )
		{
			OutputUtil.errorOutPut(response, "参数异常!");
			return;
		}
		
		if(units.getId() != null)
		{
			if(units.getId().intValue() > 0)
			{
				dao.update(units);
			}
			else{
				OutputUtil.errorOutPut(response, "ID参数异常!");
				return;
			}
		}
		else
		{
			dao.add(units);
		}
		
		OutputUtil.jsonOutPut(response, null, units); 
	}
	/**
	 * 查询联盟单位详情
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/queryUnitsDetailsForAjax.do")
	public void queryUnitsForAjax(Long id, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		Units utils = dao.find(id);
		OutputUtil.jsonOutPut(response, null, utils); 
	}
	
	/**
	 * 删除单位
	 * @param id
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/deleteUnitsForAjax.do")
	public void deleteUnitsForAjax(Long id, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		Units utils = dao.delete(id);
		OutputUtil.jsonOutPut(response, null, utils); 
	}
}
