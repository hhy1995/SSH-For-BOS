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
	
	//ע��dao
	@Autowired
	private IUserDao userDao;
	@Autowired
	private IRoleDao roleDao;
	
	//ע�����һֱ�޷���Ч�������ֱ��������ֱ�Ӷ������̴����������
	ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();

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
	/**
	 * ����һ���û���ͬ����activiti��act_id_user,act_id_membership.
	 */
	public void save(User user, String[] roleIds) {
		//��ȡ��ǰ����û����õ����룬����MD5����
		String password = user.getPassword();
		password = MD5Utils.md5(password);
		user.setPassword(password);
		userDao.save(user);//�־ö���
		
		org.activiti.engine.identity.User actUser = new UserEntity(user.getId());
		processEngine.getIdentityService().saveUser(actUser);
		for (String roleId:roleIds) {
			Role role = roleDao.findById(roleId);
			user.getRoles().add(role); //�û�������ɫ
			processEngine.getIdentityService().createMembership(actUser.getId(), role.getName());//���û����뵽�鵱��
		}
	}
}
