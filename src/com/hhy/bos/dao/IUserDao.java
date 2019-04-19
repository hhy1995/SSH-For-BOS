package com.hhy.bos.dao;

import com.hhy.bos.dao.base.IBaseDao;
import com.hhy.bos.domain.User;

/**
 * �̳�IBaseDao��������������һ����Լ��ķ���
 * @author hehaiyang
 *
 */
public interface IUserDao extends IBaseDao<User> {
	public User findByUsernameAndPassword(String username, String password);
	
}
