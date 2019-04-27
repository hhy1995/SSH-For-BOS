package com.hhy.bos.dao;

import java.util.List;

import com.hhy.bos.dao.base.IBaseDao;
import com.hhy.bos.domain.Function;

public interface IFunctionDao extends IBaseDao<Function>{

	public List<Function> findListByUserid(String id);

	public List<Function> findAllMenu();

	public List<Function> findMenuByUserid(String id);

}
