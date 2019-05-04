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
		
		/*Criteria criteria = session.createCriteria(User.class);
		criteria.add(Restrictions.eq("id", 100));*/
		
		//ʹ��������ѯ�����һ����ѯ����
		Query query = session.getNamedQuery(queryName);
		//ΪHQL�������Խ��и�ֵ
		int i = 0;
		for (Object arg : objects) {
			query.setParameter(i++, arg);
		}
		query.executeUpdate();  //ִ�и��²���
	}

	/**
	 * ͨ�õķ�ҳ��ѯ������������ƴ���ַ�����ƴhql���
	 */
	public void pageQuery(PageBean pageBean) {
		int currentPage = pageBean.getCurrentPage();
		int pageSize = pageBean.getPageSize();
		DetachedCriteria detachedCriteria = pageBean.getDetachedCriteria();   //����������ѯ����
		//�ܵ���������  select count(*) from bc_staff
		//��Ҫ�ı�Hibernate��ܷ���sql����ʽ
		detachedCriteria.setProjection(Projections.rowCount());   // select count(*) from bc_staff������sql���Ƚ����⣬�����ñ�����ӳ���ϵ
		
		//�����jdk1.7  �� jdk1.8��һЩ��ͬ
		List<Object> list = this.getHibernateTemplate().findByCriteria(detachedCriteria);
		Long total = (Long) list.get(0);
		
		pageBean.setTotal(total.intValue());//������������
		detachedCriteria.setProjection(null);//���û������޸�sql����ʽΪselect * from ....
		//���ñ�����ӳ���ϵ
		detachedCriteria.setResultTransformer(DetachedCriteria.ROOT_ENTITY);
		//��ǰҳչʾ�����ݼ���
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
