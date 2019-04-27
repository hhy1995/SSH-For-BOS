package com.hhy.bos.dao.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.hhy.bos.dao.IFunctionDao;
import com.hhy.bos.dao.base.impl.BaseDaoImpl;
import com.hhy.bos.domain.Function;

@Repository
public class FunctionDaoImpl extends BaseDaoImpl<Function> implements IFunctionDao {

	/**
	 * �����û���id��ѯ���Ӧ��Ȩ��
	 */
	public List<Function> findListByUserid(String userid) {
		List<Function> list = new ArrayList<Function>();
		String hql = "SELECT DISTINCT f FROM Function f LEFT OUTER JOIN f.roles r "
				+ "LEFT OUTER JOIN r.users u WHERE u.id = ?";
		Object[] array = this.getHibernateTemplate().find(hql, userid).toArray();
		for (Object object : array) {
			list.add((Function) object);
		}
		return list;
	}

	/**
	 * ��ѯ���еĲ˵�
	 */
	public List<Function> findAllMenu() {
		List<Function> list = new ArrayList<Function>();
		String hql = "FROM Function f WHERE f.generatemenu = '1' ORDER BY f.zindex DESC";
		Object[] array = this.getHibernateTemplate().find(hql).toArray();
		for (Object object : array) {
			list.add((Function) object);
		}
		return list;
	}

	/**
	 * �����û�id��ȷ�������Ȩ��֮�󣬲�ѯ�û���Ӧ�Ĳ˵�
	 */
	public List<Function> findMenuByUserid(String id) {
		List<Function> list = new ArrayList<Function>();
		String hql = "SELECT DISTINCT f FROM Function f LEFT OUTER JOIN f.roles r "
				+ "LEFT OUTER JOIN r.users u WHERE u.id = ? AND f.generatemenu = '1' ORDER BY f.zindex DESC";
		Object[] array = this.getHibernateTemplate().find(hql, id).toArray();
		for (Object object : array) {
			list.add((Function) object);
		}
		return list;
	}

}