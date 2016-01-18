package com.shiningcity.dao;

import java.util.List;

import com.shiningcity.entity.ChildModel;

public interface ChildModelDao extends BaseDao<ChildModel> {
	/**
	 * 验证当前手机是否已报名 
	 * 
	 * 在报名表中查找同一个活动中是否已存在此手机的报名记录 
	 * @param phone  要查找的手机号码
	 * @param matchId 赛事ID
	 * @return
	 * @throws Exception
	 */
	List<ChildModel> validPhone(String phone, Long matchId) throws Exception;
}
