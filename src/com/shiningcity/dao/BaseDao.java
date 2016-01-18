package com.shiningcity.dao;

import java.util.List;

import com.shiningcity.entity.Pager;


public interface BaseDao<T> {
	
	T find(Long id) throws Exception;
	List<T> findAll() throws Exception;
	List<T> find(T t) throws Exception;
	void add(T t) throws Exception;
	T update(T t) throws Exception;
	Pager<T> findByPager(Pager<T> pager) throws Exception;
	T delete(T t) throws Exception;
	T delete(Long id) throws Exception;
	void addAll(List<T> ts) throws Exception;
}
