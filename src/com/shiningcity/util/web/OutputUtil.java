package com.shiningcity.util.web;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.util.CycleDetectionStrategy;

public class OutputUtil {
	
	/**
	 * 定义JSON转换配置对象，防止死循环
	 * @return
	 */
	public static JsonConfig getConfig()
	{
		 JsonConfig config = new JsonConfig();
//		 config.setJavaPropertyFilter(new PropertyFilter() {
//			
//			@Override
//			public boolean apply(Object source, String name, Object value) {
//				
//				System.out.println(name + "++" + value);
//				if(value instanceof List)
//				{
//					return true;
//				}
//				
//				return false;
//			}
//		 });
		 config.setCycleDetectionStrategy(CycleDetectionStrategy.LENIENT);
		 
		 return config;
	}

	public static void jsonArrOutPut(HttpServletResponse response, 
			JSONArray fromObject) throws IOException {
		jsonOutPut(response, fromObject);
	}

	public static void jsonOutPut(HttpServletResponse response, Object object) throws IOException {
		JSONObject jo = null;
		if(object == null)
		{
			jo = new JSONObject();
		}
		
		if(object instanceof JSONObject || object instanceof JSONArray)
		{
			jo = (JSONObject) object;
			if(!jo.containsKey("type"))
			{
				jo.put("type", "success");
			}
			if(!jo.containsKey("obj"))
			{
				jo.put("obj", object);
			}
			response.getOutputStream().write(jo.toString().getBytes("utf-8"));
		}
		else
		{
			throw new IOException("Unknow type of " + object);
		}
	}
	
	/**
	 * 向Response输出JSON数据 
	 * 
	 * 给定的json中没有type属性，则默认返回成功 
	 * @param response
	 * @param json
	 * @param data
	 * @throws IOException
	 */
	public static void jsonOutPut(HttpServletResponse response, Object json, Object data) throws IOException {
		JSONObject jo = null;
		if(json == null)
		{
			jo = new JSONObject();
		}
		
		if(!jo.containsKey("type"))
		{
			jo.put("type", "success");
		}
		if(!jo.containsKey("obj") && data != null)
		{
			Object joData = null;
			if(data instanceof Collection  || data.getClass().isArray())
			{
				joData = JSONArray.fromObject(data, getConfig());
			}
			else
			{
				joData = JSONObject.fromObject(data, getConfig());
			}
			
			jo.put("obj", joData);
		}
		response.getOutputStream().write(jo.toString().getBytes("utf-8"));
	}
	
	/**
	 * 输出不带消息的错误结果
	 * @param response
	 * @throws IOException
	 */
	public static void jsonOutPutNone(HttpServletResponse response)throws IOException {
		outPut(response, "error", null);
	}
	
	/**
	 * 输出错误结果
	 * @param response
	 * @param string
	 * @throws IOException
	 */
	public static void errorOutPut(HttpServletResponse response, String string) throws IOException {
		outPut(response, "error", string);
	}
	
	/**
	 * Ajax输出结果
	 * @param response 
	 * @param type  error,success
	 * @param msg  If it is not null output
	 * @throws IOException
	 */
	public static void outPut(HttpServletResponse response, String type, String msg) throws IOException {
		JSONObject jo = new JSONObject();
		
		jo.put("type", type);
		
		if(msg != null)
		{
			jo.put("msg", msg);
		}
		
		jsonOutPut(response, jo);
		
	}
	
	/**
	 * 出来首页加载的循环依赖
	 * @param response
	 * @param json
	 * @param data
	 * @throws IOException
	 */
	public static void jsonOutPutaForIndex(HttpServletResponse response, Object json, Object data) throws IOException {
		JSONObject jo = null;
		if(json == null)
		{
			jo = new JSONObject();
		}
		
		if(!jo.containsKey("type"))
		{
			jo.put("type", "success");
		}
		
		JsonConfig config = new JsonConfig();
		config.setCycleDetectionStrategy(CycleDetectionStrategy.LENIENT);
		config.setExcludes(new String[]{
				"match"
		});
		if(!jo.containsKey("obj") && data != null)
		{
			Object joData = null;
			if(data instanceof Collection  || data.getClass().isArray())
			{
				joData = JSONArray.fromObject(data, config);
			}
			else
			{
				joData = JSONObject.fromObject(data, config);
			}
			
			jo.put("obj", joData);
		}
		response.getOutputStream().write(jo.toString().getBytes("utf-8"));
	}
	
	/**
	 * 将给定的对象转化为JSON对象
	 * @param data
	 * @return
	 */
	public static Object fromObject(Object data)
	{
		Object joData = null;
		JsonConfig config = getConfig();
		if(data instanceof Collection  || data.getClass().isArray())
		{
			joData = JSONArray.fromObject(data, config);
		}
		else
		{
			joData = JSONObject.fromObject(data, config);
		}
		
		return joData;
	}
}
