package com.hhy.bos.service.impl;


import java.util.List;

import javax.annotation.Resource;

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
	
	public void save(Role role, String ids) {
		roleDao.save(role);//��model����־û��洢
		String[] functionIds = ids.split(",");
		for (String fid : functionIds) {
			Function function = new Function(fid); //�йܣ����ߣ�����
			//�ý�ɫȥ����Ȩ��
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
