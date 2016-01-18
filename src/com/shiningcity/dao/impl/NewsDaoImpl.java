package com.shiningcity.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.NewsDao;
import com.shiningcity.entity.News;

@Service
@Transactional
public class NewsDaoImpl extends BaseDaoImpl<News> implements NewsDao {

	@SuppressWarnings("unchecked")
	@Override
	public List<News> find(int len) throws Exception {
		
		Query query = getSession().createQuery("from  " + getModelClass().getName() + " order by addDate desc ");
		
		query.setMaxResults(len);
		
		return query.list();
	}

}
