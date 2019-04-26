package com.hhy.bos.service;

import com.hhy.bos.domain.User;
import com.hhy.bos.utils.PageBean;

public interface IUserService {

	User login(User model);

	public void editPassword(String password, String id);

	public void pageQuery(PageBean pageBean);
	
}
