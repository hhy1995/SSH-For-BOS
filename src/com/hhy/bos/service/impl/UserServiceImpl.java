package com.hhy.bos.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hhy.bos.dao.IUserDao;
import com.hhy.bos.domain.User;
import com.hhy.bos.service.IUserService;
import com.hhy.bos.utils.MD5Utils;
import com.hhy.bos.utils.PageBean;

@Service
@Transactional
public class UserServiceImpl implements IUserService{
	
	//ע��dao
	@Autowired
	private IUserDao userDao;

	public User login(User user) {
		String username = user.getUsername();
		String password = user.getPassword();  //����
		password = MD5Utils.md5(password);   //ʹ��MD5����
		return userDao.findByUsernameAndPassword(username,password);
	}

	public void editPassword(String password, String id) {
		userDao.execteUpdate("editPassword", password,id);
	}

	public void pageQuery(PageBean pageBean) {
		userDao.pageQuery(pageBean);
	}
}
