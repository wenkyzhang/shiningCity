package com.shiningcity.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shiningcity.dao.ParterDao;
import com.shiningcity.entity.Parter;
import com.shiningcity.util.web.OutputUtil;

@Controller
@RequestMapping("/parter")
public class ParterAction {

	Logger logger = Logger.getLogger(ParterAction.class);
	
	@Autowired
	private ParterDao dao;
	
	/**
	 * ================================Ajax=====================================
	 */
	
	/**
	 * 查询所有的合作伙伴 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/queryParterForAjax.do")
	public void queryUnitsForAjax(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		List<Parter> all = dao.findAll();
		OutputUtil.jsonOutPut(response, null, all); 
	}
}
