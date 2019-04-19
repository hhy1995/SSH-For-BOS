package com.hhy.bos.dao.base;

import java.io.Serializable;
import java.util.List;

/**
 * 抽取持久层通用的方法
 * @author hehaiyang
 */
public interface IBaseDao<T> {
	public void save(T entity);
	public void delete(T entity);
	public void update(T entity);
	public T findById(Serializable id);
	public List<T> findAll();
	//提供通用的修改方法
	public void execteUpdate(String queryName,Object ...objects);
}
