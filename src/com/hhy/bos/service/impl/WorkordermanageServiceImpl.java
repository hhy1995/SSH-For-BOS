package com.hhy.bos.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.TaskService;
import org.activiti.engine.task.Task;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hhy.bos.dao.IWorkordermanageDao;
import com.hhy.bos.domain.Workordermanage;
import com.hhy.bos.service.IWorkordermanageService;
import com.hhy.bos.utils.BOSContext;
import com.hhy.bos.web.action.TaskAction;

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
	
	/**
	 * ��������ʵ�����������̱������޸Ĺ��������е�startΪ1
	 */
	public void start(String id) {
		Workordermanage workordermanage = workordermanageDao.findById(id);
		workordermanage.setStart("1");  //�Ѿ�����
		String processDefinitionKey = "transfer";  //���̶���id
		String businessKey = id;  //ҵ������-----(�ù���������ҵ�ҵ������)
		Map<String, Object> variables = new HashMap<String, Object>();   //���̱���
		variables.put("ҵ������", workordermanage);
		processEngine.getRuntimeService().startProcessInstanceByKey(processDefinitionKey, businessKey, variables);
	}
	public Workordermanage findById(String workordermanageId) {
		return workordermanageDao.findById(workordermanageId);
	}
	
	/**
	 * ������˹�������
	 */
	public void checkWorkordermanage(String taskId, Integer check, String id) {
		//�����˲�ͨ���Ļ����޸Ĺ�����startΪ0
		Workordermanage workordermanage = workordermanageDao.findById(id);
		//��˲�ͨ����ɾ����ʷ����ʵ������
		Task task = processEngine.getTaskService().createTaskQuery().taskId(taskId).singleResult();
		Map<String, Object> variables = new HashMap<String, Object>();
		variables.put("check", check);
		//������˹���������
		String processInstanceId = task.getProcessInstanceId();
		processEngine.getTaskService().complete(taskId, variables);
		if (check == 0) {
			workordermanage.setStart("0");
			//ɾ����ʷʵ������
			processEngine.getHistoryService().deleteHistoricProcessInstance(processInstanceId);
		}
	}
	
	
}
