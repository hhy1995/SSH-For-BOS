package com.hhy.bos.web.action.base;

import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;

import com.hhy.bos.crm.CustomerService;
import com.hhy.bos.service.IDecidedzoneService;
import com.hhy.bos.service.IRegionService;
import com.hhy.bos.service.IStaffService;
import com.hhy.bos.service.ISubareaService;
import com.hhy.bos.service.IUserService;
import com.hhy.bos.utils.PageBean;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

/**
 * ͨ��Actionʵ��
 * @author hehaiyang
 *
 * @param <T>
 */
public class BaseAction<T> extends ActionSupport implements ModelDriven<T> {
	//ע��Service
	@Resource
	protected IUserService userService;
	@Autowired
	protected IRegionService regionService;
	@Autowired
	protected IStaffService staffService;
	@Autowired
	protected ISubareaService subareaService;
	@Autowired
	protected IDecidedzoneService decidedzoneService;
	@Autowired
	protected CustomerService customerService;
	
	protected PageBean pageBean = new PageBean();
	DetachedCriteria detachedCriteria = null;
	public void setRows(int rows) {
		pageBean.setPageSize(rows);
	}
	public void setPage(int page) {
		pageBean.setCurrentPage(page);
	}

	//ģ�Ͷ���
	protected T model;
	public T getModel() {
		
		return model;
	}
	/**
	 * ��PageBean����ת����json
	 * @throws IOException 
	 */
	public void writePageBean2Json(PageBean pageBean,String[] excludes) throws IOException{
		//��pageBean����ת����json���󷵻�
		JsonConfig jsonConfig = new JsonConfig();
		//����jsonConfig��json���л��Ķ���������ã��ų�һЩ����Ҫ�������л�������
		jsonConfig.setExcludes(excludes);   
		JSONObject jsonObject = JSONObject.fromObject(pageBean, jsonConfig);
		String json = jsonObject.toString();
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");
		ServletActionContext.getResponse().getWriter().print(json);
	}
	
	/**
	 * �ڹ��췽���У���̬���ʵ�����ͣ�ͨ�����䴴��ģ�Ͷ���
	 */
	public BaseAction() {
		ParameterizedType genericSuperclass = (ParameterizedType) this.getClass().getGenericSuperclass();
		Type[] actualTypeArguments = genericSuperclass.getActualTypeArguments();
		//���ʵ������
		Class<T> entityClass = (Class<T>) actualTypeArguments[0];
		detachedCriteria = DetachedCriteria.forClass(entityClass);
		pageBean.setDetachedCriteria(detachedCriteria);
		try {
			//ͨ����������������
			model = entityClass.newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * ��List����ת����json
	 * @param list
	 * @param excludes
	 * @throws IOException 
	 */
	public  void writeList2Json(List list, String[] excludes) throws IOException {
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.setExcludes(excludes);   
		JSONArray jsonObject = JSONArray.fromObject(list, jsonConfig);
		String json = jsonObject.toString();
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");
		ServletActionContext.getResponse().getWriter().print(json);
	}
}