package com.shiningcity.dao;

import java.util.List;

import com.shiningcity.entity.Information;

public interface InformationDao extends BaseDao<Information> {
	/**
	 * 根据给定类型返回对应类型的消息记录
	 * @param type 消息类型
	 * @return
	 * @throws Exception
	 */
	List<Information> getInforForType(int type, int len) throws Exception;
}
