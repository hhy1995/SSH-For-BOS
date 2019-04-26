package com.hhy.bos.service;

import com.hhy.bos.domain.Role;
import com.hhy.bos.utils.PageBean;

public interface IRoleService {

	public void save(Role model, String ids);

	public void pageQuery(PageBean pageBean);

}
