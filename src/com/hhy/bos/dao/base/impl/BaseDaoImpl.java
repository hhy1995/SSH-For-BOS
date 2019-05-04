package com.hhy.bos.dao.base.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.hhy.bos.dao.base.IBaseDao;
import com.hhy.bos.utils.PageBean;
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
		
		/*Criteria criteria = session.createCriteria(User.class);
		criteria.add(Restrictions.eq("id", 100));*/
		
		//使用命名查询语句获得一个查询对象
		Query query = session.getNamedQuery(queryName);
		//为HQL语句的属性进行赋值
		int i = 0;
		for (Object arg : objects) {
			query.setParameter(i++, arg);
		}
		query.executeUpdate();  //执行更新操作
	}

	/**
	 * 通用的分页查询方法，避免了拼接字符串，拼hql语句
	 */
	public void pageQuery(PageBean pageBean) {
		int currentPage = pageBean.getCurrentPage();
		int pageSize = pageBean.getPageSize();
		DetachedCriteria detachedCriteria = pageBean.getDetachedCriteria();   //离线条件查询对象
		//总的数据量，  select count(*) from bc_staff
		//需要改变Hibernate框架发出sql的形式
		detachedCriteria.setProjection(Projections.rowCount());   // select count(*) from bc_staff，发的sql语句比较特殊，会重置表和类的映射关系
		
		//在这边jdk1.7  和 jdk1.8有一些不同
		List<Object> list = this.getHibernateTemplate().findByCriteria(detachedCriteria);
		Long total = (Long) list.get(0);
		
		pageBean.setTotal(total.intValue());//设置总数据量
		detachedCriteria.setProjection(null);//重置回来，修改sql的形式为select * from ....
		//重置表和类的映射关系
		detachedCriteria.setResultTransformer(DetachedCriteria.ROOT_ENTITY);
		//当前页展示的数据集合
		int firstResult = (currentPage - 1) * pageSize;
		int maxResults = pageSize;
		List rows = this.getHibernateTemplate().findByCriteria(detachedCriteria, firstResult, maxResults);
		pageBean.setRows(rows);
	}

	public void saveOrUpdate(T entity) {
		this.getHibernateTemplate().saveOrUpdate(entity);
	}

	public List<T> findByCriteria(DetachedCriteria detachedCriteria) {
		return (List<T>) this.getHibernateTemplate().findByCriteria(detachedCriteria);
	}
}
