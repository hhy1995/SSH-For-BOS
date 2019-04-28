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
 * 流程定义管理
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class ProcessDefinitionAction extends ActionSupport{
//	@Autowired
//	private RepositoryService repositoryService;
	//获取流程配置引擎
	//ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
	/**
	 * 查询最新版本流程定义列表数据
	 */
	public String list(){
		ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
		ProcessDefinitionQuery query = processEngine.getRepositoryService().createProcessDefinitionQuery();
		//ProcessDefinitionQuery query = repositoryService.createProcessDefinitionQuery();
		//查询最新的版本，排序，然后再执行查询。
		List<ProcessDefinition> list = query.latestVersion().orderByProcessDefinitionName().desc().list();
		ActionContext.getContext().getValueStack().set("list", list);
		return "list";
	}
	
}
