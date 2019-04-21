package com.hhy.bos.service;

import java.util.List;

import com.hhy.bos.domain.Region;
import com.hhy.bos.utils.PageBean;

public interface IRegionService {

	public void saveBatch(List<Region> list);

	public void pageQuery(PageBean pageBean);

	public List<Region> findAll();

	public List<Region> findByQ(String q);

}
