package com.shiningcity.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.MatchAreaDao;
import com.shiningcity.entity.match.MatchArea;

@Service
@Transactional
public class MatchAreaDaoImpl extends BaseDaoImpl<MatchArea> implements
		MatchAreaDao {
	
	@Override
	protected Criteria addCondition(MatchArea t, Criteria criteria) {
		
		Criteria query = super.addCondition(t, criteria);
		
		if(t.getArea() != null)
		{
			query.add(Restrictions.eq("area.id", t.getArea().getId()));
		}
		
		if(t.getMatch() != null)
		{
			query.add(Restrictions.eq("match.id", t.getMatch().getId()));
		}
		
		return query;
	}
	
}
