package com.shiningcity.dao.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.VoteDao;
import com.shiningcity.entity.Vote;

@Service
@Transactional
public class VoteDaoImpl extends BaseDaoImpl<Vote> implements VoteDao {

}
