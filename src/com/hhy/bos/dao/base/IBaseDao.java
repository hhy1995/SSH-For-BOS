package com.hhy.bos.dao.base;

import java.io.Serializable;
import java.util.List;

import com.hhy.bos.domain.Region;
import com.hhy.bos.utils.PageBean;

/**
 * ��ȡ�־ò�ͨ�õķ���
 * @author hehaiyang
 */
public interface IBaseDao<T> {
	public void save(T entity);
	public void delete(T entity);
	public void update(T entity);
	public void saveOrUpdate(T entity);
	public T findById(Serializable id);
	public List<T> findAll();
	//�ṩͨ�õ��޸ķ���
	public void execteUpdate(String queryName,Object ...objects);
	public void pageQuery(PageBean pageBean);
	
}
