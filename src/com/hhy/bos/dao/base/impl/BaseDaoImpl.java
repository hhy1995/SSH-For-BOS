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
   * 持久层通用实现
 * @author hehaiyang
 *
 * @param <T>
 */
public class BaseDaoImpl<T> extends HibernateDaoSupport implements IBaseDao<T>{
	
	//实体的类型
	private Class<T> entityClass;
	
	//使用注解的方式实现依赖注入，按照类型注入
	@Resource 
	//@Autowired
	public void setMySessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}
	
	/**
	 * 在构造方法当中动态获得操作的实体类型
	 */
	public BaseDaoImpl() {
		//获得父类（BaseDaoImpl<T>）的类型
		ParameterizedType genericSuperclass = (ParameterizedType) this.getClass().getGenericSuperclass();
		//获得父类上的泛型数组
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
	 * 通用的更新方法
	 */
	public void execteUpdate(String queryName, Object... objects) {
		Session session = this.getSession();//从本地线程中，获得session对象    
		//使用命名查询语句获得一个查询对象
		Query query = session.getNamedQuery(queryName);
		//为HQL语句的属性进行赋值
		int i = 0;
		for (Object arg : objects) {
			query.setParameter(i++, arg);
		}
		query.executeUpdate();  //执行更新操作
	}
	
}
