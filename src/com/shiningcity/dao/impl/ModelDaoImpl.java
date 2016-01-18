package com.shiningcity.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.ModelDao;
import com.shiningcity.entity.Match;
import com.shiningcity.entity.Model;
import com.shiningcity.entity.Pager;
import com.shiningcity.entity.match.MatchArea;

@Service
@Transactional
public class ModelDaoImpl extends BaseDaoImpl<Model> implements ModelDao {

	@Override
	protected Criteria addSorted(Criteria criteria) {
		
		criteria.addOrder(Order.asc("modelId"));
		
		criteria.addOrder(Order.desc("votes"));
		
		return super.addSorted(criteria);
	}

	@Override
	public Pager<Model> findModel(Pager<Model> pager, String search) throws Exception {
		
		Session session  = getCurrentSession();
		
		Criteria criteria = session.createCriteria(Model.class);
		criteria.add(Restrictions.or(Restrictions.eq("modelId", search), Restrictions.ilike("name", "%" + search + "%")));
		
		if (pager.getCondition() != null)  
        {  
        	Model model = pager.getCondition();
        	
            MatchArea area = model.getArea();
            if(area != null)
            {
            	criteria.add(Restrictions.eq("area.id", area.getId()));
            }
            
            Match match = model.getMatch();
            if(match != null)
            {
            	criteria.add(Restrictions.eq("match.id", match.getId()));
            }
        	
        }
		
		// 获取根据条件分页查询的总行数  
        Long rowCount = (Long) criteria.setProjection(Projections.rowCount()).uniqueResult();  
        criteria.setProjection(null);  
  
        // 获取根据条件分页查询的总行数  
		
		pager.setSumTotal(rowCount.intValue());
		
		// 增加排序方法 
		criteria = addSorted(criteria);
		
		Pager<Model> page = findByPager(pager, criteria);
		
		closeCurrentSession(session);
		
		return page;
	}
	
	@Override
	public Pager<Model> findByPager(Pager<Model> pager) throws Exception {
		Session session = getCurrentSession();
		Criteria criteria = session.createCriteria(getModelClass());  
  
        if (pager.getCondition() != null)  
        {  
//            criteria.add(Example.create(pager.getCondition()).enableLike());
        	
        	Model model = pager.getCondition();
        	
        	if(model.getName() != null)
        	{
        		criteria.add(Restrictions.or(Restrictions.like("name", model.getName()),Restrictions.eq("id", model.getName())));
        	}
            
            MatchArea area = model.getArea();
            if(area != null)
            {
            	criteria.add(Restrictions.eq("area.id", area.getId()));
            }
            
            Match match = model.getMatch();
            if(match != null)
            {
            	criteria.add(Restrictions.eq("match.id", match.getId()));
            }
        	
        }
  
        // 获取根据条件分页查询的总行数  
        Long rowCount = (Long) criteria.setProjection(
                Projections.rowCount()).uniqueResult();  
        criteria.setProjection(null);  
  
        // 获取根据条件分页查询的总行数  
		
		pager.setSumTotal(rowCount.intValue());
		
		// 增加排序方法 
		criteria = addSorted(criteria);
		
		Pager<Model> page = findByPager(pager, criteria);
		
		closeCurrentSession(session);
		
		return page;
	}
}
