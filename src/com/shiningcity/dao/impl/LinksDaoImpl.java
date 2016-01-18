package com.shiningcity.dao.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shiningcity.dao.LinksDao;
import com.shiningcity.entity.match.Links;

@Service
@Transactional
public class LinksDaoImpl extends BaseDaoImpl<Links> implements LinksDao {

}
