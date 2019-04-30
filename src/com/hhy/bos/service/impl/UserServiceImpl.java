package com.hhy.bos.service.impl;


import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.impl.persistence.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hhy.bos.dao.IRoleDao;
import com.hhy.bos.dao.IUserDao;
import com.hhy.bos.domain.Role;
import com.hhy.bos.domain.User;
import com.hhy.bos.service.IUserService;
import com.hhy.bos.utils.MD5Utils;
import com.hhy.bos.utils.PageBean;

@Service
@Transactional
public class UserServiceImpl implements IUserService{
	
	//注入dao
	@Autowired
	private IUserDao userDao;
	@Autowired
	private IRoleDao roleDao;
	
	//注解服务一直无法生效，还各种报错，在这边直接定义流程处理引擎对象
	ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();

	public User login(User user) {
		String username = user.getUsername();
		String password = user.getPassword();  //明文
		password = MD5Utils.md5(password);   //使用MD5加密
		return userDao.findByUsernameAndPassword(username,password);
	}

	public void editPassword(String password, String id) {
		userDao.execteUpdate("editPassword", password,id);
	}

	public void pageQuery(PageBean pageBean) {
		userDao.pageQuery(pageBean);
	}
	/**
	 * 保存一个用户，同步到activiti的act_id_user,act_id_membership.
	 */
	public void save(User user, String[] roleIds) {
		//获取当前添加用户设置的密码，进行MD5加密
		String password = user.getPassword();
		password = MD5Utils.md5(password);
		user.setPassword(password);
		userDao.save(user);//持久对象
		
		org.activiti.engine.identity.User actUser = new UserEntity(user.getId());
		processEngine.getIdentityService().saveUser(actUser);
		for (String roleId:roleIds) {
			Role role = roleDao.findById(roleId);
			user.getRoles().add(role); //用户关联角色
			processEngine.getIdentityService().createMembership(actUser.getId(), role.getName());//将用户加入到组当中
		}
	}
}
