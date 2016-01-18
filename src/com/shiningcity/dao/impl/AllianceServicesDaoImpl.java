package com.shiningcity.dao.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.AllianceInternalDao;
import com.shiningcity.entity.AllianceInternal;

@Service
@Transactional
public class AllianceServicesDaoImpl extends BaseDaoImpl<AllianceInternal>
		implements AllianceInternalDao {

}
