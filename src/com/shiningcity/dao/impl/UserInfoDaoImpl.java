package com.shiningcity.dao.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.UserInfoDao;
import com.shiningcity.entity.UserInfo;

@Service
@Transactional
public class UserInfoDaoImpl extends BaseDaoImpl<UserInfo> implements
		UserInfoDao {

	@Override
	public UserInfo login(String login, String passwd) throws Exception {
		
		UserInfo user = new UserInfo();
		user.setLogin(login);
		user.setPasswd(passwd);
		
		List<UserInfo> users = find(user);
		return users.size() < 1 ? null : users.get(0);
	}

	@Override
	public UserInfo validLogin(String login) throws Exception {
		
		UserInfo user = new UserInfo();
		user.setLogin(login);
		
		List<UserInfo> users = find(user);
		return users.size() < 1 ? null : users.get(0);
	}

}
