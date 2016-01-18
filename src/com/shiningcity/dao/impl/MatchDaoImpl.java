package com.shiningcity.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.MatchDao;
import com.shiningcity.entity.Match;
import com.shiningcity.entity.Pager;
import com.shiningcity.util.ConfigUtil;

@Service
@Transactional
public class MatchDaoImpl extends BaseDaoImpl<Match> implements MatchDao {

	@Override
	public List<Match> findLastMatch() throws Exception {
		
		int numberOfMatchs = Integer.parseInt(ConfigUtil.getParam("numberOfMatchs", "5"));
		
		Pager<Match> pager = new Pager<Match>(numberOfMatchs);
		Criteria criteria = getSession().createCriteria(getModelClass());
				
		criteria.addOrder(Order.desc("id"));
		
		return findByPager(pager, criteria).getData();
	}
}
