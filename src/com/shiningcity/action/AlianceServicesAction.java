package com.shiningcity.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiningcity.dao.AllianceServicesDao;
import com.shiningcity.entity.AllianceServices;
import com.shiningcity.util.web.OutputUtil;

@Controller
@RequestMapping("/services")
public class AlianceServicesAction {

	Logger logger = Logger.getLogger(AlianceServicesAction.class);
	
	@Autowired
	private AllianceServicesDao dao;
	
	/**
	 * ================================Ajax=====================================
	 * 
	 */
	
	/**
	 * 查询所有的服务 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/queryServicesForAjax.do")
	public void queryServicesForAjax(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		List<AllianceServices> all = dao.findAll();
		OutputUtil.jsonOutPut(response, null, all); 
	}
	
}