package com.hhy.bos.web.action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Workordermanage;
import com.hhy.bos.service.IWorkordermanageService;
import com.hhy.bos.utils.BOSContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * �������
 * @author hehaiyang
 *
 */

@Controller
@Scope("prototype")
public class TaskAction extends ActionSupport {
	//ע��������Service
	@Autowired
	private TaskService taskService;
	
	@Autowired
	private IWorkordermanageService workordermanageService;
	
	ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
	/**
	 * ��ѯ������
	 */
	public String findGroupTask(){
		TaskQuery query = taskService.createTaskQuery();
		//��ȡ��ǰ��¼�û�
		String candidateUser = BOSContext.getLoginUser().getId();
		//��������ˣ���ѡ�˹��ˣ�
		List<Task> list = query.taskCandidateUser(candidateUser).list();
		//ѹ��ֵջ
		ActionContext.getContext().getValueStack().set("list", list);
		return "grouptasklist";
	}
	
	private String taskId;
	
	public String getTaskId() {
		return taskId;
	}
	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}
	/**
	 * ��������id����ѯ��Ӧ�����̱�������
	 * 
	 * @return
	 * @throws IOException
	 */
	public String showData() throws IOException {
		Map<String, Object> variables = processEngine.getRuntimeService().getVariables(taskId);
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");
		ServletActionContext.getResponse().getWriter().print(variables.toString());
		return NONE;
	}
	/**
	 * ʰȡ������
	 * @return
	 */
	public String takeTask(){
		String userId = BOSContext.getLoginUser().getId();
		taskService.claim(taskId, userId);
		return "togrouptasklist";
	}
	
	/**
	 * ��ѯ��������
	 */
	public String findPersonalTask(){
		TaskQuery query = taskService.createTaskQuery();
		String assignee = BOSContext.getLoginUser().getId();   //��¼��id
		//�����������
		List<Task> list = query.taskAssignee(assignee).list();
		ActionContext.getContext().getValueStack().set("list", list);
		return "personaltasklist";
	}
	
	
	private Integer check;   // ��˽���� 0����˲�ͨ��    1�����ͨ��
	public Integer getCheck() {
		return check;
	}
	public void setCheck(Integer check) {
		this.check = check;
	}
	/**
	 * ������˹���������
	 */
	public String checkWorkOrderManage() {
		// ��������id��ѯ�������
		Task task = taskService.createTaskQuery().taskId(taskId).singleResult();
		// ������������ѯ����ʵ��id
		String processInstanceId = task.getProcessInstanceId();
		// ��������ʵ��id��ѯ����ʵ������
		ProcessInstance processInstance = processEngine.getRuntimeService()
				.createProcessInstanceQuery()
				.processInstanceId(processInstanceId).singleResult();
		String workordermanageId = processInstance.getBusinessKey();
		Workordermanage workordermanage = workordermanageService.findById(workordermanageId);
		if(check == null){
			// ��ת�����ҳ��
			// ��ת��һ����˹�����ҳ�棬չʾ��ǰ��Ӧ�Ĺ�������Ϣ
			ActionContext.getContext().getValueStack().set("map", workordermanage);
			return "check";
		}else{
			//������˹�����
			workordermanageService.checkWorkordermanage(taskId,check,workordermanageId);
			return "topersonaltasklist";
		}
		
	}
	/**
	 * �����������
	 * @return
	 */
	public String outStore(){
		taskService.complete(taskId);
		return "topersonaltasklist";
	}

	/**
	 * ������������
	 * @return
	 */
	public String transferGoods(){
		taskService.complete(taskId);
		return "topersonaltasklist";
	}
	
	/**
	 * ����ǩ������
	 * @return
	 */
	public String receive(){
		taskService.complete(taskId);
		return "topersonaltasklist";
	}
}
