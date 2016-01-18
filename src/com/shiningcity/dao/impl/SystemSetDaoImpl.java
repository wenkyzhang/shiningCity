package com.shiningcity.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.SystemSetDao;
import com.shiningcity.entity.SystemSet;

@Service
@Transactional
public class SystemSetDaoImpl extends BaseDaoImpl<SystemSet> implements SystemSetDao{
	
	private static Logger logger = Logger.getLogger(SystemSetDaoImpl.class);

	@Override
	public String findValue(String key) throws Exception {
		
		logger.info("Read key is " + key);
		SystemSet set = new SystemSet();
		set.setKeyValue(key);
		
		List<SystemSet> sets = find(set);
		
		if(sets.size() >= 1)
		{
			logger.info("Read content is " + sets.get(0).getContent());
			return sets.get(0).getContent();
		}
		logger.error("Read content failed. sets is " + sets);
		return null;
	}

	@Override
	public SystemSet findSet(String key) throws Exception {
		logger.info("Read key is " + key);
		SystemSet set = new SystemSet();
		set.setKeyValue(key);
		
		List<SystemSet> sets = find(set);
		
		if(sets.size() >= 1)
		{
			logger.info("Read content is " + sets.get(0).getContent());
			return sets.get(0);
		}
		logger.error("Read content failed. sets is " + sets);
		return null;
	}
	
}
