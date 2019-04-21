package com.hhy.bos.service;

import java.util.List;

import com.hhy.bos.domain.Subarea;
import com.hhy.bos.utils.PageBean;

public interface ISubareaService {

	public void save(Subarea model);

	public void pageQuery(PageBean pageBean);

	public List<Subarea> findAll();

}
