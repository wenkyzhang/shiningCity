package com.shiningcity.dao;

import com.shiningcity.entity.Model;
import com.shiningcity.entity.Pager;

public interface ModelDao extends BaseDao<Model> {
	Pager<Model> findModel(Pager<Model> pager,String search) throws Exception;
}
