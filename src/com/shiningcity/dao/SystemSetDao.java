package com.shiningcity.dao;

import com.shiningcity.entity.SystemSet;

public interface SystemSetDao extends BaseDao<SystemSet> {
	
	/**
	 * 获取指定key的内容
	 * @param key
	 * @return
	 * @throws Exception
	 */
	String findValue(String key) throws Exception;
	/**
	 * 获取指定key的内容
	 * @param key
	 * @return
	 * @throws Exception
	 */
	SystemSet findSet(String key) throws Exception;
	
	
}
