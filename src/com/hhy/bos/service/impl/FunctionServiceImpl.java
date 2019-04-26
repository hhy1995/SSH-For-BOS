package com.hhy.bos.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hhy.bos.dao.IFunctionDao;
import com.hhy.bos.domain.Function;
import com.hhy.bos.service.IFunctionService;
import com.hhy.bos.utils.PageBean;

@Service
@Transactional
public class FunctionServiceImpl implements IFunctionService {
	//¥¿À¿   Dao√ª”–◊¢»Î
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
}
