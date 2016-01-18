package com.shiningcity.weixin.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

/**
 * Servlet implementation class GetMapData
 */
public class GetMapData extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(GetMapData.class);

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		logger.info("fromUser:"+request.getParameter("fromUser"));
		logger.info("toUser:"+request.getParameter("toUser"));
		PrintWriter out = response.getWriter();
		out.print("{\"name\":\"http\"}");
		out.close();
		out = null;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		doGet(request, response);
		
	}

}
