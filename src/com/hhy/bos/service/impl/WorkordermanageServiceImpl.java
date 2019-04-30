package com.hhy.bos.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hhy.bos.dao.IWorkordermanageDao;
import com.hhy.bos.domain.Workordermanage;
import com.hhy.bos.service.IWorkordermanageService;

@Service
@Transactional
public class WorkordermanageServiceImpl implements IWorkordermanageService{
	@Autowired
	private IWorkordermanageDao workordermanageDao;
	
	ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();

	public void save(Workordermanage model) {
		model.setUpdatetime(new Date());
		workordermanageDao.save(model);
	}
	/**
	 * ��ѯstart״̬Ϊ0�Ĺ�����
	 */
	public List<Workordermanage> findListNotStart() {
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Workordermanage.class);
		detachedCriteria.add(Restrictions.eq("start", "0"));   //��ӹ�������
		return workordermanageDao.findByCriteria(detachedCriteria);
	}
	
	//����ʵ��id
	private String id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	/**
	 * ��������ʵ�����������̱������޸Ĺ��������е�startΪ1
	 */
	public void start() {
		Workordermanage workordermanage = workordermanageDao.findById(id);
		workordermanage.setStart("1");
		String processDefinitionKey = "transfer";  //���̶���id
		String businessKey = id;
		Map<String, Object> variables = new HashMap<String, Object>();
		variables.put("ҵ������", workordermanage);
		processEngine.getRuntimeService().startProcessInstanceByKey(processDefinitionKey, businessKey, variables);
		
	}
	
}
