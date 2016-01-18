package com.shiningcity.dao.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.AllianceServicesDao;
import com.shiningcity.entity.AllianceServices;

@Service
@Transactional
public class AllianceInternalDaoImpl extends BaseDaoImpl<AllianceServices>
		implements AllianceServicesDao {

}
