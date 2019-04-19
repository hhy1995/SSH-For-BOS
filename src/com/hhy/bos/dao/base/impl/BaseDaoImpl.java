package com.hhy.bos.dao.base.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.hhy.bos.dao.base.IBaseDao;
/**
   * �־ò�ͨ��ʵ��
 * @author hehaiyang
 *
 * @param <T>
 */
public class BaseDaoImpl<T> extends HibernateDaoSupport implements IBaseDao<T>{
	
	//ʵ�������
	private Class<T> entityClass;
	
	//ʹ��ע��ķ�ʽʵ������ע�룬��������ע��
	@Resource 
	//@Autowired
	public void setMySessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	
	/**
	 * �ڹ��췽�����ж�̬��ò�����ʵ������
	 */
	public BaseDaoImpl() {
		//��ø��ࣨBaseDaoImpl<T>��������
		ParameterizedType genericSuperclass = (ParameterizedType) this.getClass().getGenericSuperclass();
		//��ø����ϵķ�������
		Type[] actualTypeArguments = genericSuperclass.getActualTypeArguments();
		entityClass = (Class<T>) actualTypeArguments[0];
	}
	
	
	public void save(T entity) {
		this.getHibernateTemplate().save(entity);
	}

	public void delete(T entity) {
		this.getHibernateTemplate().delete(entity);
		
	}

	public void update(T entity) {
		this.getHibernateTemplate().update(entity);
	}

	public T findById(Serializable id) {
		return this.getHibernateTemplate().get(entityClass, id);
	}

	public List<T> findAll() {
		String hql = "FROM " + entityClass.getSimpleName();
		return (List<T>) this.getHibernateTemplate().find(hql);
	}
	
	/**
	 * ͨ�õĸ��·���
	 */
	public void execteUpdate(String queryName, Object... objects) {
		Session session = this.getSession();//�ӱ����߳��У����session����    
		//ʹ��������ѯ�����һ����ѯ����
		Query query = session.getNamedQuery(queryName);
		//ΪHQL�������Խ��и�ֵ
		int i = 0;
		for (Object arg : objects) {
			query.setParameter(i++, arg);
		}
		query.executeUpdate();  //ִ�и��²���
	}
	
}
