package com.shiningcity.weixin.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

/**
 * Servlet implementation class getLocation
 */
public class GetLocation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private double val = 40.5;
	
	private static Logger logger = Logger.getLogger(GetLocation.class);
       
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		logger.info("getLocation:"+request.getParameter("fromUser"));
		logger.info("getLocation:"+request.getParameter("toUser"));
		PrintWriter out = response.getWriter();
		out.print("{\"x\":"+val+",\"y\":"+val+"}");
		val ++;
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
