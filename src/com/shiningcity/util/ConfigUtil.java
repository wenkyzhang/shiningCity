package com.shiningcity.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Properties;

import org.apache.log4j.Logger;

public class ConfigUtil {
	
	private static Logger logger = Logger.getLogger(ConfigUtil.class);
	
	/**
	 * 投票次数控制 参数Key
	 */
	public static final String VOTE_LIMIT = "voteLimit";
	
	/**
	 * 投票次数Cookie存储key
	 */
	public static final String VOTE_KEY = "vote";
	
	private static Properties properties;
	
	static
	{
		load();
		
	}

	private static void load(){
		try {
			
			String rootPath = ConfigUtil.class.getClassLoader().getResource("").toURI().getPath();
			File config =  new File(rootPath + "config.properties");
			properties = new Properties();
			properties.load(new FileInputStream(config));
		} catch (IOException e) {
			logger.error("load config.properties file failed. cause by " + e.getMessage());
		} catch (URISyntaxException e) {
			logger.error("load config.properties file failed. cause by " + e.getMessage());
		}
	}
	
	public static String getParam(String key) throws Exception
	{
		if(properties == null)
		{
			load();
		}
		
		if(properties == null)
		{
			throw new Exception("Load file failed.");
		}
		
		if(!properties.containsKey(key))
		{
			throw new IllegalArgumentException("No find key : " + key);
		}
		
		return properties.getProperty(key);
	}
	
	/**
	 * 获取配置文件
	 * @param key
	 * @param defaultValue
	 * @return
	 * @throws Exception
	 */
	public static String getParam(String key, String defaultValue) throws Exception
	{
		if(properties == null)
		{
			load();
		}
		
		if(properties == null)
		{
			throw new Exception("Load file failed.");
		}
		
		if(!properties.containsKey(key))
		{
			throw new IllegalArgumentException("No find key : " + key);
		}
		
		return properties.getProperty(key, defaultValue);
	}
}
