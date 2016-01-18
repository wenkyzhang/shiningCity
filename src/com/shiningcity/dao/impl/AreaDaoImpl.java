package com.shiningcity.dao.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.AreaDao;
import com.shiningcity.entity.match.Area;

@Service
@Transactional
public class AreaDaoImpl extends BaseDaoImpl<Area> implements AreaDao {

}
