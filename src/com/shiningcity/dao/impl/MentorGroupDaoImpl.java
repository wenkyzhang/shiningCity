package com.shiningcity.dao.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.MentorGroupDao;
import com.shiningcity.entity.MentorGroup;

@Service
@Transactional
public class MentorGroupDaoImpl extends BaseDaoImpl<MentorGroup> implements
		MentorGroupDao {

}
