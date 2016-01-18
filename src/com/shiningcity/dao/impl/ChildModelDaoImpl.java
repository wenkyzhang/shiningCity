package com.shiningcity.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.ChildModelDao;
import com.shiningcity.entity.ChildModel;
import com.shiningcity.entity.Match;

@Service
@Transactional
public class ChildModelDaoImpl extends BaseDaoImpl<ChildModel> implements
		ChildModelDao {

	@Override
	public List<ChildModel> validPhone(String phone, Long matchId)  throws Exception
	{
		
		ChildModel cm = new ChildModel();
		cm.setPhone(phone);
		
		Match match = new Match();
		match.setId(matchId);
		cm.setMatch(match);
		
		List<ChildModel> cms = find(cm);
		
		return cms;
	}

	@Override
	protected Criteria addCondition(ChildModel t, Criteria criteria) {
		
		Criteria query = super.addCondition(t, criteria);
		
		if(t.getMatch() != null)
		{
			criteria.add(Restrictions.eq("match.id", t.getMatch().getId()));
		}
		
		return query;
	}
}
