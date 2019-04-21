package com.hhy.bos.dao;

import java.util.List;

import com.hhy.bos.dao.base.IBaseDao;
import com.hhy.bos.domain.Region;

public interface IRegionDao extends IBaseDao<Region>{

	public List<Region> findByQ(String q);
}
