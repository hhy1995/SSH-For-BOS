package com.hhy.bos.service;

import java.util.List;

import com.hhy.bos.domain.Function;
import com.hhy.bos.domain.Role;
import com.hhy.bos.utils.PageBean;

public interface IRoleService {

	public void save(Role model, String ids);

	public void pageQuery(PageBean pageBean);

	public List<Role> findAll();

}
