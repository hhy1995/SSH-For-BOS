package com.hhy.bos.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hhy.bos.dao.IRegionDao;
import com.hhy.bos.domain.Region;
import com.hhy.bos.service.IRegionService;
import com.hhy.bos.utils.PageBean;

@Service
@Transactional
public class RegionServiceImpl implements IRegionService{
	
	@Resource
	private IRegionDao regionDao;

	/**
	 * 批处理进行保存，这样就能保证只有一个事务，提高程序执行的效率
	 */
	public void saveBatch(List<Region> list) {
		for (Region region : list) {
			regionDao.saveOrUpdate(region);
		}
	}

	public void pageQuery(PageBean pageBean) {
		regionDao.pageQuery(pageBean);
	}

	public List<Region> findAll() {
		return regionDao.findAll();
	}
}
