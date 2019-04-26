package com.hhy.bos.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.hhy.bos.dao.IUserDao;
import com.hhy.bos.dao.base.impl.BaseDaoImpl;
import com.hhy.bos.domain.User;

@Service
@Repository
//@Scope("prototype")   //��ɶ���ģʽ
public class UserDaoImpl extends BaseDaoImpl<User> implements IUserDao{
	
	/**
	 * �����û����������ѯ�û�
	 */
	public User findByUsernameAndPassword(String username, String password) {
		String hql = "FROM User u WHERE u.username = ? AND u.password = ?";
		List<Object> list = this.getHibernateTemplate().find(hql,username,password);
		if (list != null && list.size() > 0) {
			return (User) list.get(0);
		}
		return null;
	}

	public User findUserByUsername(String username) {
		String hql = "FROM User u WHERE u.username = ?";
		List<Object> list = this.getHibernateTemplate().find(hql,username);
		if (list != null && list.size() > 0) {
			return (User) list.get(0);
		}
		return null;
	}

}
