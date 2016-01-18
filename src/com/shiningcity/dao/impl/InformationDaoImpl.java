package com.shiningcity.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.InformationDao;
import com.shiningcity.entity.Information;

@Service
@Transactional
public class InformationDaoImpl extends BaseDaoImpl<Information> implements
		InformationDao {
	@Override
	protected Criteria addCondition(Information t, Criteria criteria) {
		Criteria query = super.addCondition(t, criteria);
		
		if(t != null && t.getMatch() != null)
		{
			query.add(Restrictions.eq("match.id", t.getMatch().getId()));
		}
		
		return query;
	}
	
	@Override
	protected Criteria addSorted(Criteria criteria) {
		return criteria.addOrder(Order.desc("pubDate"));
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Information> getInforForType(int type, int len) throws Exception {
		
		Query query = getSession().createQuery("from  " + getModelClass().getName() + " where type = " + type + " order by addDate desc ");
		
		query.setMaxResults(len);
		
		return query.list();
	}
}
