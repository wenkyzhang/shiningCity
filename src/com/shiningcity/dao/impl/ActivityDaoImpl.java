package com.shiningcity.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.ActivityDao;
import com.shiningcity.entity.match.Activity;

@Service
@Transactional
public class ActivityDaoImpl extends BaseDaoImpl<Activity> implements
		ActivityDao {
	
	@Override
	protected Criteria addCondition(Activity t, Criteria criteria) {
		
		
		Criteria c = criteria;//super.addCondition(t, criteria);
		
		if(t.getMatch() != null)
		{
			criteria.add(Restrictions.eq("match.id", t.getMatch().getId()));
		}
		
		if(t.getId() != null)
		{
			criteria.add(Restrictions.eq("id", t.getId()));
		}
		
		if(t.getArea() != null)
		{
			criteria.add(Restrictions.eq("area.id", t.getArea().getId()));
		}
		
		/**
		 * 大于开始时间
		 */
		if(t.getStartDate() != null)
		{
			criteria.add(Restrictions.lt("startDate", t.getStartDate()));
		}
		
		/**
		 * 小于结束时间 
		 */
		if(t.getEndDate() != null)
		{
			criteria.add(Restrictions.gt("endDate", t.getEndDate()));
		}
		
		return c;
	}
	
	@Override
	protected Criteria addSorted(Criteria criteria) {
		
		Criteria c = super.addSorted(criteria);
		
		c.addOrder(Order.desc("createDate"));
		
		return c;
	}
}
