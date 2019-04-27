package com.hhy.bos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hhy.bos.dao.IFunctionDao;
import com.hhy.bos.domain.Function;
import com.hhy.bos.domain.User;
import com.hhy.bos.service.IFunctionService;
import com.hhy.bos.utils.BOSContext;
import com.hhy.bos.utils.PageBean;

@Service
@Transactional
public class FunctionServiceImpl implements IFunctionService {
	//蠢死   Dao没有注入
	@Autowired
	private IFunctionDao functionDao;

	public void pageQuery(PageBean pageBean) {
		functionDao.pageQuery(pageBean);
	}

	public List<Function> findAll() {
		return functionDao.findAll();
	}

	public void save(Function model) {
		Function function = model.getFunction();
		if (function != null && function.getId().equals("")) {
			model.setFunction(null);
		}
		functionDao.save(model);
	}
	/**
	 * 查询菜单
	 */
	public List<Function> findMenu() {
		User user = BOSContext.getLoginUser();
		List<Function> list = null;
		if (user.getUsername().equals("admin")) {
			//超级管理员，查询所有菜单
			list = functionDao.findAllMenu();
		}else{
			
			list = functionDao.findMenuByUserid(user.getId());
		}
		return list;
	}
}
