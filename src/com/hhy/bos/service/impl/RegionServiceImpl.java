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
	 * ��������б��棬�������ܱ�ֻ֤��һ��������߳���ִ�е�Ч��
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
