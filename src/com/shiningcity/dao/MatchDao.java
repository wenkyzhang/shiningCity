package com.shiningcity.dao;

import java.util.List;

import com.shiningcity.entity.Match;

public interface MatchDao extends BaseDao<Match> {
	
	/**
	 * 获取最后的赛事
	 * 
	 * 返回记录条数由config.properties文件中的numberOfMatchs参数控制 
	 * @return
	 * @throws Exception
	 */
	List<Match> findLastMatch() throws Exception;
}
