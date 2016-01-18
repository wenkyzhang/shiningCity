package com.shiningcity.dao;

import com.shiningcity.entity.UserInfo;

public interface UserInfoDao extends BaseDao<UserInfo> {

	/**
	 * 登录
	 * @param login
	 * @param passwd
	 * @return
	 * @throws Exception
	 */
	UserInfo login(String login, String passwd) throws Exception;
	
	/**
	 * 验证登录名是否已注册
	 * @param login
	 * @return
	 * @throws Exception
	 */
	UserInfo validLogin(String login) throws Exception;

}
