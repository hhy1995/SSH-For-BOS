package com.hhy.bos.dao;

import com.hhy.bos.dao.base.IBaseDao;
import com.hhy.bos.domain.User;

/**
 * 继承IBaseDao的五个方法，并且还有自己的方法
 * @author hehaiyang
 *
 */
public interface IUserDao extends IBaseDao<User> {
	public User findByUsernameAndPassword(String username, String password);
	
}
