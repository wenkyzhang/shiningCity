package com.shiningcity.dao.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.ParterDao;
import com.shiningcity.entity.Parter;

@Service
@Transactional
public class ParterDaoImpl extends BaseDaoImpl<Parter> implements ParterDao {

}
