package com.hhy.bos.web.action;

import java.util.List;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.repository.ProcessDefinitionQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * ���̶������
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class ProcessDefinitionAction extends ActionSupport{
//	@Autowired
//	private RepositoryService repositoryService;
	//��ȡ������������
	//ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
	/**
	 * ��ѯ���°汾���̶����б�����
	 */
	public String list(){
		ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
		ProcessDefinitionQuery query = processEngine.getRepositoryService().createProcessDefinitionQuery();
		//ProcessDefinitionQuery query = repositoryService.createProcessDefinitionQuery();
		//��ѯ���µİ汾������Ȼ����ִ�в�ѯ��
		List<ProcessDefinition> list = query.latestVersion().orderByProcessDefinitionName().desc().list();
		ActionContext.getContext().getValueStack().set("list", list);
		return "list";
	}
	
}
