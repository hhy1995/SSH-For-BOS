package com.hhy.bos.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.identity.Group;
import org.activiti.engine.impl.persistence.entity.GroupEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hhy.bos.dao.IRoleDao;
import com.hhy.bos.domain.Function;
import com.hhy.bos.domain.Role;
import com.hhy.bos.service.IRoleService;
import com.hhy.bos.utils.PageBean;

@Service
@Transactional
public class RoleServiceImpl implements IRoleService{

	@Resource
	private IRoleDao roleDao;
	
	
	/**
	 * 保存一个角色，同步保存到activiti的组表当中
	 */
	public void save(Role role, String ids) {
		roleDao.save(role);//将model对象持久化存储
		//使用角色 的名称作为组的标识
		ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
		Group group = new GroupEntity(role.getName());
		processEngine.getIdentityService().saveGroup(group);
		
		String[] functionIds = ids.split(",");
		for (String fid : functionIds) {
			Function function = new Function(fid); //托管（离线）对象
			//让角色去关联权限
			role.getFunctions().add(function);
		}
	}

	public void pageQuery(PageBean pageBean) {
		roleDao.pageQuery(pageBean);
	}

	public List<Role> findAll() {
		return roleDao.findAll();
	}

}
