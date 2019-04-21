package com.hhy.bos.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.hhy.bos.dao.IRegionDao;
import com.hhy.bos.dao.base.impl.BaseDaoImpl;
import com.hhy.bos.domain.Region;

@Repository
public class RegionDaoImpl extends BaseDaoImpl<Region> implements IRegionDao {

	public List<Region> findByQ(String q) {
		List<Region> list = new ArrayList<Region>();
		String hql = "FROM Region WHERE province LIKE ? OR city LIKE ? OR district LIKE ?";
		Object[] array = this.getHibernateTemplate().find(hql, "%"+q+"%","%"+q+"%","%"+q+"%").toArray();
		for (Object object : array) {
			list.add((Region)object);
		}
		return list;
	}

}
