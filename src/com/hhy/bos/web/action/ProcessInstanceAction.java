package com.hhy.bos.web.action;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.impl.persistence.entity.ProcessDefinitionEntity;
import org.activiti.engine.impl.pvm.process.ActivityImpl;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.runtime.ProcessInstanceQuery;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 流程实例管理
 * 
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class ProcessInstanceAction extends ActionSupport {
	ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();

	/**
	 * 查询流程实例列表数据
	 */
	public String list() {
		ProcessInstanceQuery query = processEngine.getRuntimeService().createProcessInstanceQuery();
		List<ProcessInstance> list = query.orderByProcessDefinitionId().desc().list();
		ActionContext.getContext().getValueStack().set("list", list); // 将获取到的流程实例对象压入值栈
		return "list";
	}

	// 接收流程id
	private String id;

	public void setId(String id) {
		this.id = id;
	}

	/**
	 * 根据流程实例id，查询对应的流程变量数据
	 * 
	 * @return
	 * @throws IOException
	 */
	public String findData() throws IOException {
		Map<String, Object> variables = processEngine.getRuntimeService().getVariables(id);
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");
		ServletActionContext.getResponse().getWriter().print(variables.toString());
		return NONE;
	}

	/**
	 * 根据流程实例id查询坐标、部署id、图片名称
	 * 
	 * @return
	 */
	public String showPng() {
		// 1.根据流程实例id查询流程实例对象
		ProcessInstance processInstance = processEngine.getRuntimeService().createProcessInstanceQuery().processInstanceId(id).singleResult();
		// 2.根据流程实例对象查询流程定义id
		String processDefinitionId = processInstance.getProcessDefinitionId();
		// 3.根据流程定义id查询流程定义对象
		ProcessDefinition processDefinition = processEngine.getRepositoryService().createProcessDefinitionQuery()
				.processDefinitionId(processDefinitionId).singleResult();
		// 4.根据流程定义对象查询部署id
	    deploymentId = processDefinition.getDeploymentId();
		imageName = processDefinition.getDiagramResourceName();
		
		//查询坐标
		//1.获得当前流程实例执行到哪个节点
		String activityId = processInstance.getActivityId();
		//2.加载bpmn（xml）文件获得流程定义对象
		ProcessDefinitionEntity pd = (ProcessDefinitionEntity) processEngine.getRepositoryService().getProcessDefinition(processDefinitionId);   //去查询act_ge_bytearray这张表
		//3.根据activityId获取含有坐标信息的对象
		ActivityImpl findActivity = pd.findActivity(activityId);
		int x = findActivity.getX();
		int y = findActivity.getY();
		int width = findActivity.getWidth();
		int height = findActivity.getHeight();
		
		//压入值栈
		ActionContext.getContext().getValueStack().set("x", x);
		ActionContext.getContext().getValueStack().set("y", y);
		ActionContext.getContext().getValueStack().set("width", width);
		ActionContext.getContext().getValueStack().set("height", height);
		
		return "showPng";
	}

	private String deploymentId;
	private String imageName;
	
	public String getDeploymentId() {
		return deploymentId;
	}

	public void setDeploymentId(String deploymentId) {
		this.deploymentId = deploymentId;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	/**
	 * 获取png输入流
	 */
	public String viewImage() {
		InputStream pngName = processEngine.getRepositoryService().getResourceAsStream(deploymentId, imageName);
		ActionContext.getContext().getValueStack().set("pngStream", pngName);
		return "viewImage";
	}
}
