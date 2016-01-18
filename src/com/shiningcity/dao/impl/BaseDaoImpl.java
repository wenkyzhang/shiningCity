package com.shiningcity.dao.impl;

import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.List;

import javax.persistence.Table;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.BaseDao;
import com.shiningcity.dao.hibernate3.HibernateBaseDao;
import com.shiningcity.entity.Pager;

@Service
@Transactional
public class BaseDaoImpl<T> extends HibernateBaseDao<T, Serializable> implements BaseDao<T> {
	
	@Autowired
	protected SessionFactory sessionFacotry;

	public SessionFactory getSessionFacotry() {
		return sessionFacotry;
	}

	public void setSessionFacotry(SessionFactory sessionFacotry) {
		this.sessionFacotry = sessionFacotry;
	}
	
	protected Class<T> getModelClass() {
		Type t = ((ParameterizedType) getClass().getGenericSuperclass())
				.getActualTypeArguments()[0];
		return getClass(t, 0);
	}
	
	protected String getTableName() {
		Class<?> clz = getModelClass();
		Table tbl = clz.getAnnotation(Table.class);
		return tbl.name();
	}
	
	/**
	 * 重新打开一个session
	 * @return
	 */
	protected Session getCurrentSession()
	{
		return sessionFactory.getCurrentSession();
	}
	
	/**
	 * 关闭一个打开的session
	 * @param session
	 */
	protected void closeCurrentSession(Session session)
	{
		if(session != null && session.isOpen())
		{
			//session.close();
		}
	}
	
	@SuppressWarnings("unchecked")
	private Class<T> getClass(Type type, int i) {     
        if (type instanceof ParameterizedType) { // 处理泛型类型     
            return getGenericClass((ParameterizedType) type, i);     
        } else if (type instanceof TypeVariable) {     
            return (Class<T>) getClass(((TypeVariable<?>) type).getBounds()[0], 0); // 处理泛型擦拭对象     
        } else {// class本身也是type，强制转型     
            return (Class<T>) type;     
        }     
    }
	
	@SuppressWarnings("unchecked")
	private Class<T> getGenericClass(ParameterizedType parameterizedType, int i) {     
        Object genericClass = parameterizedType.getActualTypeArguments()[i];     
        if (genericClass instanceof ParameterizedType) { // 处理多级泛型     
            return (Class<T>) ((ParameterizedType) genericClass).getRawType();     
        } else if (genericClass instanceof GenericArrayType) { // 处理数组泛型     
            return (Class<T>) ((GenericArrayType) genericClass).getGenericComponentType();     
        } else if (genericClass instanceof TypeVariable) { // 处理泛型擦拭对象     
            return (Class<T>) getClass(((TypeVariable<?>) genericClass).getBounds()[0], 0);     
        } else {     
            return (Class<T>) genericClass;     
        }     
    }

	@Override
	public T find(Long id) throws Exception {
		
		Session session = getCurrentSession();
		
		@SuppressWarnings("unchecked")
		T t = (T) session.get(getModelClass().getName(), id);
		
		closeCurrentSession(session);
		return t;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> find(T t) throws Exception {
		
		Session session = getCurrentSession();
		;
		Criteria query = createQuery(session, t);
		
		List<T> ts = query.list();
		
		closeCurrentSession(session);
		
		return ts;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findAll() throws Exception {
		
		Session session = getCurrentSession();
		
		List<T> ts = session.createQuery("from " + getModelClass().getName()).list();
		
		closeCurrentSession(session);
		return ts;
	}

	@Override
	public void add(T t) throws Exception {
		Session  session = getCurrentSession();
		session.save(t);
		session.flush();
		closeCurrentSession(session);
	}

	@Override
	public T update(T t) throws Exception {
		
		Session session = getCurrentSession();
		session.update(t);
		session.flush();
		closeCurrentSession(session);
		return t;
	}
	

	@Override
	public T delete(T t) throws Exception {
		Session session = getCurrentSession();
		session.delete(t);
		session.flush();
		closeCurrentSession(session);
		return t;
	}

	@SuppressWarnings("unchecked")
	@Override
	public T delete(Long id) throws Exception {
		Session session = getCurrentSession();
		T t = (T) session.get(getModelClass(), id);
		
		closeCurrentSession(session);
		return delete(t);
	}
	
	/**
	 * 根据给定条件查询结果
	 */
	@Override
	public Pager<T> findByPager(Pager<T> pager) throws Exception {
		
		Session session = getCurrentSession();
		Criteria criteria = session.createCriteria(getModelClass());  
  
        if (pager.getCondition() != null)  
        {  
            criteria.add(Example.create(pager.getCondition()).enableLike());  
        }
        
        criteria = addCondition(pager.getCondition(), criteria);
  
        // 获取根据条件分页查询的总行数  
        Long rowCount = (Long) criteria.setProjection(
                Projections.rowCount()).uniqueResult();  
        criteria.setProjection(null);  
  
        // 获取根据条件分页查询的总行数  
		
		pager.setSumTotal(rowCount.intValue());
		
		// 增加排序方法 
		criteria = addSorted(criteria);
		
		Pager<T> page = findByPager(pager, criteria);
		
		closeCurrentSession(session);
		
		return page;
	}
	
	/**
	 * 分页查询
	 * 
	 * 方法重载用于实现自定义查询条件
	 * @param pager
	 * @param criteria
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	protected Pager<T> findByPager(Pager<T> pager, Criteria criteria) throws Exception {
		Criteria query = criteria;
		
		query.setFirstResult((pager.getCurPage() -1 ) * pager.getPageSize());
		query.setMaxResults(pager.getPageSize());
		
		List<T> result = query.list();
		pager.setData(result);
		
		return pager;
	}
	
	/**
	 * 根据给定对象设置查询条件
	 * @param session
	 * @param t
	 * @return
	 */
	protected Criteria createQuery(Session session, T t) {
		Criteria query = session.createCriteria(getModelClass());
		
		query = addCondition(t, query);
		
		query = addSorted(query);
		
		return query;
	}
	
	/**
	 * 增加属性对象的条件
	 * @param query
	 * @param clz
	 * @param o
	 * @return
	 */
	protected Criteria createQuery(Criteria query, String fieldName, Object o) {
		
		if(fieldName != null && o != null)
		{
			query.createCriteria(fieldName).add(Example.create(o));
		}
		
		return query;
	}

	@Override
	protected Class<T> getEntityClass() {
		return getModelClass();
	}

	
	/**
	 * 增加排序方法
	 * @param criteria
	 * @return
	 */
	protected Criteria addSorted(Criteria criteria)
	{
		return criteria;
	}
	
	/**
	 * 增加查询条件 
	 * @param criteria
	 * @return
	 */
	protected Criteria addCondition(T t, Criteria criteria)
	{
		if(t != null)
		{
			criteria.add(Example.create(t));
		}
		
		return criteria;
	}

	@Override
	public void addAll(List<T> ts) throws Exception {
		for(T t : ts)
		{
			add(t);
		}
	}
}
