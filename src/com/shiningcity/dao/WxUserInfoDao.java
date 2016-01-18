package com.shiningcity.dao;

import java.util.List;

import com.shiningcity.entity.WxUserInfo;

public interface WxUserInfoDao extends BaseDao<WxUserInfo> {
	/**
	 * 根据OpenId查询关注用户
	 * @param openId
	 * @return
	 * @throws Exception
	 */
	List<WxUserInfo> find(String openId) throws Exception;
	/**
	 * 根据UnionId查询关注用户
	 * @param unionId
	 * @return
	 * @throws Exception
	 */
	List<WxUserInfo> findForUnionId(String unionId) throws Exception;
}
