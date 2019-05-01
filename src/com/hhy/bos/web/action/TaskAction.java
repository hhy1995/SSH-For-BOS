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
 * 任务操作
 * @author hehaiyang
 *
 */

@Controller
@Scope("prototype")
public class TaskAction extends ActionSupport {
	//注入组任务Service
	@Autowired
	private TaskService taskService;
	
	@Autowired
	private IWorkordermanageService workordermanageService;
	
	ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
	/**
	 * 查询组任务
	 */
	public String findGroupTask(){
		TaskQuery query = taskService.createTaskQuery();
		//获取当前登录用户
		String candidateUser = BOSContext.getLoginUser().getId();
		//组任务过滤（候选人过滤）
		List<Task> list = query.taskCandidateUser(candidateUser).list();
		//压入值栈
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
	 * 根据任务id，查询对应的流程变量数据
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
	 * 拾取组任务
	 * @return
	 */
	public String takeTask(){
		String userId = BOSContext.getLoginUser().getId();
		taskService.claim(taskId, userId);
		return "togrouptasklist";
	}
	
	/**
	 * 查询个人任务
	 */
	public String findPersonalTask(){
		TaskQuery query = taskService.createTaskQuery();
		String assignee = BOSContext.getLoginUser().getId();   //登录人id
		//个人任务过滤
		List<Task> list = query.taskAssignee(assignee).list();
		ActionContext.getContext().getValueStack().set("list", list);
		return "personaltasklist";
	}
	
	
	private Integer check;   // 审核结果， 0：审核不通过    1：审核通过
	public Integer getCheck() {
		return check;
	}
	public void setCheck(Integer check) {
		this.check = check;
	}
	/**
	 * 办理审核工作单任务
	 */
	public String checkWorkOrderManage() {
		// 根据任务id查询任务对象
		Task task = taskService.createTaskQuery().taskId(taskId).singleResult();
		// 根据任务对象查询流程实例id
		String processInstanceId = task.getProcessInstanceId();
		// 根据流程实例id查询流程实例对象
		ProcessInstance processInstance = processEngine.getRuntimeService()
				.createProcessInstanceQuery()
				.processInstanceId(processInstanceId).singleResult();
		String workordermanageId = processInstance.getBusinessKey();
		Workordermanage workordermanage = workordermanageService.findById(workordermanageId);
		if(check == null){
			// 跳转到审核页面
			// 跳转到一个审核工作单页面，展示当前对应的工作单信息
			ActionContext.getContext().getValueStack().set("map", workordermanage);
			return "check";
		}else{
			//办理审核工作单
			workordermanageService.checkWorkordermanage(taskId,check,workordermanageId);
			return "topersonaltasklist";
		}
		
	}
	/**
	 * 办理出库任务
	 * @return
	 */
	public String outStore(){
		taskService.complete(taskId);
		return "topersonaltasklist";
	}

	/**
	 * 办理配送任务
	 * @return
	 */
	public String transferGoods(){
		taskService.complete(taskId);
		return "topersonaltasklist";
	}
	
	/**
	 * 办理签收任务
	 * @return
	 */
	public String receive(){
		taskService.complete(taskId);
		return "topersonaltasklist";
	}
}
