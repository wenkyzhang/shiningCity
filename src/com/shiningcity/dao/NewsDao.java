package com.shiningcity.dao;

import java.util.List;

import com.shiningcity.entity.News;

public interface NewsDao extends BaseDao<News> {
	/**
	 * 获取最新的len条新闻
	 * @param len
	 * @return
	 * @throws Exception
	 */
	List<News> find(int len) throws Exception;
}
