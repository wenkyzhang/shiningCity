package com.shiningcity.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.SignDao;
import com.shiningcity.entity.match.Sign;

@Service
@Transactional
public class SignDaoImpl extends BaseDaoImpl<Sign> implements SignDao {
	
	@Override
	protected Criteria addCondition(Sign t, Criteria criteria) {
		
		Criteria query = super.addCondition(t, criteria); 
		
		if(t.getActivity() != null)
		{
			query.add(Restrictions.eq("activity.id", t.getActivity().getId()));
		}
		
		return query;
	}
	
	@Override
	protected Criteria addSorted(Criteria criteria) {
		return criteria.addOrder(Order.asc("signDate"));
	}
}
