package com.hhy.bos.service;

import java.util.List;

import com.hhy.bos.domain.Function;
import com.hhy.bos.utils.PageBean;

public interface IFunctionService{

	public void pageQuery(PageBean pageBean);

	public List<Function> findAll();

	public void save(Function model);

	public List<Function> findMenu();

}
