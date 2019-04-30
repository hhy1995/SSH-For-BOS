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
 * ����ʵ������
 * 
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class ProcessInstanceAction extends ActionSupport {
	ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();

	/**
	 * ��ѯ����ʵ���б�����
	 */
	public String list() {
		ProcessInstanceQuery query = processEngine.getRuntimeService().createProcessInstanceQuery();
		List<ProcessInstance> list = query.orderByProcessDefinitionId().desc().list();
		ActionContext.getContext().getValueStack().set("list", list); // ����ȡ��������ʵ������ѹ��ֵջ
		return "list";
	}

	// ��������id
	private String id;

	public void setId(String id) {
		this.id = id;
	}

	/**
	 * ��������ʵ��id����ѯ��Ӧ�����̱�������
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
	 * ��������ʵ��id��ѯ���ꡢ����id��ͼƬ����
	 * 
	 * @return
	 */
	public String showPng() {
		// 1.��������ʵ��id��ѯ����ʵ������
		ProcessInstance processInstance = processEngine.getRuntimeService().createProcessInstanceQuery().processInstanceId(id).singleResult();
		// 2.��������ʵ�������ѯ���̶���id
		String processDefinitionId = processInstance.getProcessDefinitionId();
		// 3.�������̶���id��ѯ���̶������
		ProcessDefinition processDefinition = processEngine.getRepositoryService().createProcessDefinitionQuery()
				.processDefinitionId(processDefinitionId).singleResult();
		// 4.�������̶�������ѯ����id
	    deploymentId = processDefinition.getDeploymentId();
		imageName = processDefinition.getDiagramResourceName();
		
		//��ѯ����
		//1.��õ�ǰ����ʵ��ִ�е��ĸ��ڵ�
		String activityId = processInstance.getActivityId();
		//2.����bpmn��xml���ļ�������̶������
		ProcessDefinitionEntity pd = (ProcessDefinitionEntity) processEngine.getRepositoryService().getProcessDefinition(processDefinitionId);   //ȥ��ѯact_ge_bytearray���ű�
		//3.����activityId��ȡ����������Ϣ�Ķ���
		ActivityImpl findActivity = pd.findActivity(activityId);
		int x = findActivity.getX();
		int y = findActivity.getY();
		int width = findActivity.getWidth();
		int height = findActivity.getHeight();
		
		//ѹ��ֵջ
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
	 * ��ȡpng������
	 */
	public String viewImage() {
		InputStream pngName = processEngine.getRepositoryService().getResourceAsStream(deploymentId, imageName);
		ActionContext.getContext().getValueStack().set("pngStream", pngName);
		return "viewImage";
	}
}
