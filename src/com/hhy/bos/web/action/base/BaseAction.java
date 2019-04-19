package com.hhy.bos.web.action.base;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * ͨ��Actionʵ��
 * @author hehaiyang
 *
 * @param <T>
 */
public class BaseAction<T> extends ActionSupport implements ModelDriven<T> {

	//ģ�Ͷ���
	protected T model;
	public T getModel() {
		
		return model;
	}

	/**
	 * �ڹ��췽���У���̬���ʵ�����ͣ�ͨ�����䴴��ģ�Ͷ���
	 */
	public BaseAction() {
		ParameterizedType genericSuperclass = (ParameterizedType) this.getClass().getGenericSuperclass();
		Type[] actualTypeArguments = genericSuperclass.getActualTypeArguments();
		//���ʵ������
		Class<T> entityClass = (Class<T>) actualTypeArguments[0];
		try {
			//ͨ����������������
			model = entityClass.newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		
	}
}
