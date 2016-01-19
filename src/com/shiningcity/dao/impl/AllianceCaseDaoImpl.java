package com.shiningcity.dao.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.AllianceCaseDao;
import com.shiningcity.entity.AllianceCase;

@Service
@Transactional
public class AllianceCaseDaoImpl extends BaseDaoImpl<AllianceCase> implements AllianceCaseDao {
}
