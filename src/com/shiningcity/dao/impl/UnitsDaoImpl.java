package com.shiningcity.dao.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.UnitsDao;
import com.shiningcity.entity.Units;

@Service
@Transactional
public class UnitsDaoImpl extends BaseDaoImpl<Units> implements UnitsDao {
	
	
}
