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
	 * 查询start状态为0的工作单
	 */
	public List<Workordermanage> findListNotStart() {
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Workordermanage.class);
		detachedCriteria.add(Restrictions.eq("start", "0"));   //添加过滤条件
		return workordermanageDao.findByCriteria(detachedCriteria);
	}
	
	/**
	 * 启动流程实例，设置流程变量，修改工作单当中的start为1
	 */
	public void start(String id) {
		Workordermanage workordermanage = workordermanageDao.findById(id);
		workordermanage.setStart("1");  //已经启动
		String processDefinitionKey = "transfer";  //流程定义id
		String businessKey = id;  //业务主键-----(让工作流框架找到业务数据)
		Map<String, Object> variables = new HashMap<String, Object>();   //流程变量
		variables.put("业务数据", workordermanage);
		processEngine.getRuntimeService().startProcessInstanceByKey(processDefinitionKey, businessKey, variables);
	}
	public Workordermanage findById(String workordermanageId) {
		return workordermanageDao.findById(workordermanageId);
	}
	
	/**
	 * 处理审核工作任务
	 */
	public void checkWorkordermanage(String taskId, Integer check, String id) {
		//如果审核不通过的话，修改工作单start为0
		Workordermanage workordermanage = workordermanageDao.findById(id);
		//审核不通过，删除历史流程实例对象
		Task task = processEngine.getTaskService().createTaskQuery().taskId(taskId).singleResult();
		Map<String, Object> variables = new HashMap<String, Object>();
		variables.put("check", check);
		//办理审核工作单任务
		String processInstanceId = task.getProcessInstanceId();
		processEngine.getTaskService().complete(taskId, variables);
		if (check == 0) {
			workordermanage.setStart("0");
			//删除历史实例数据
			processEngine.getHistoryService().deleteHistoricProcessInstance(processInstanceId);
		}
	}
	
	
}
