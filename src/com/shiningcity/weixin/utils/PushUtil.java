package com.shiningcity.weixin.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONObject;

import com.shiningcity.weixin.message.resp.Article;

/**
 * 
 * @author klcheng
 * @date 2015-06-25
 * 推送等消息配置解析类
 *
 */
public class PushUtil {
	
	private static JSONObject pushConfig = null;
	
	
	public static void init()
	{
		String rootPath = "";
		try {
			rootPath = PushUtil.class.getClassLoader().getResource("").toURI().getPath();
		} catch (URISyntaxException e) {
			e.printStackTrace();
		}
		System.out.println(rootPath);
		pushConfig = JSONObject.fromObject(readFile(rootPath+"/pushConfig.json"));//获得json文件的内容
	}
	
	@SuppressWarnings("unchecked")
	public static List<Article> getArtByKey(String key)
	{
		if(null == pushConfig) init();
		List<Article> articleList = new ArrayList<Article>(); 
		List<JSONObject> artJson = pushConfig.getJSONArray(key);
		Article artBean = null;
		for (JSONObject art : artJson) {
			System.out.println(art);
			artBean = new Article();
			artBean.setTitle(art.getString("title"));
			artBean.setDescription(art.getString("description"));
			artBean.setPicUrl(art.getString("picUrl"));
			artBean.setUrl(art.getString("detailUrl"));
			articleList.add(artBean);
		}
		return articleList;
	}
	
	public static Object getValueByKey(String key)
	{
		if(null == pushConfig) init();
//		Object obj = null;
		String [] keys = key.split("\\.");
		JSONObject jsonObj = pushConfig;
		for (int i = 0; i < keys.length; i++) {
			//最后一层为值
			if(i == keys.length -1)
			{
				return jsonObj.get(keys[i]);
			}else{
				jsonObj = jsonObj.getJSONObject(keys[i]);
			}
		}
		
		return jsonObj;
	}
	
	public static void main(String[] args) {
		String key = "appInfo.appId";
		System.out.println(PushUtil.getValueByKey(key));
	}
	
	public static String readFile(String fileName)
	{   
		String fileContent = "";   
	    try 
	    {     
	    	File f = new File(fileName);    
	    	if(f.isFile()&&f.exists())
	    	{     
	    		InputStreamReader read = new InputStreamReader(new FileInputStream(f),"utf-8");     
	    		BufferedReader reader=new BufferedReader(read);     
	    		String line;     
	    		while ((line = reader.readLine()) != null) 
	    		{      
	    			fileContent += line;     
	    		}       
	    		read.close();    
	    	}   
	    } catch (Exception e) 
	    {       
	    	e.printStackTrace();   
	    }   
	    return fileContent; 
	} 
	
}
