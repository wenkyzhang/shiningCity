package com.shiningcity.dao.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.WxUserInfoDao;
import com.shiningcity.entity.WxUserInfo;

@Service
@Transactional
public class WxUserInfoDaoImpl extends BaseDaoImpl<WxUserInfo> implements
		WxUserInfoDao {

	@Override
	public List<WxUserInfo> find(String openId) throws Exception {
		WxUserInfo user = new WxUserInfo();
		
		user.setOpenid(openId);
		
		return find(user);

	}

	@Override
	public List<WxUserInfo> findForUnionId(String unionId) throws Exception {
		WxUserInfo user = new WxUserInfo();
		
		user.setUnionid(unionId);
		
		return find(user);
	}
	
}
