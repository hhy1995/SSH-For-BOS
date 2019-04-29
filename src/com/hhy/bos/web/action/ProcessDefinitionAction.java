package com.hhy.bos.web.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.ZipInputStream;

import org.activiti.engine.ProcessEngine;
import org.activiti.engine.ProcessEngines;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.DeploymentBuilder;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.repository.ProcessDefinitionQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 流程定义管理
 * 
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class ProcessDefinitionAction extends ActionSupport {
	// @Autowired
	// private RepositoryService repositoryService;
	// 获取流程配置引擎
	

	ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
	/**
	 * 查询最新版本流程定义列表数据
	 */
	public String list() {
		ProcessDefinitionQuery query = processEngine.getRepositoryService().createProcessDefinitionQuery();
		// ProcessDefinitionQuery query =
		// repositoryService.createProcessDefinitionQuery();
		// 查询最新的版本，排序，然后再执行查询。
		List<ProcessDefinition> list = query.latestVersion().orderByProcessDefinitionName().desc().list();
		ActionContext.getContext().getValueStack().set("list", list);
		return "list";
	}

	// 用于接收上传文件
	private File zipFile;

	public void setZipFile(File zipFile) {
		this.zipFile = zipFile;
	}

	/**
	 * 部署流程定义
	 * @throws FileNotFoundException 
	 */
	public String deploy() throws FileNotFoundException{
		DeploymentBuilder deploymentBuilder = processEngine.getRepositoryService().createDeployment();
		deploymentBuilder.addZipInputStream(new ZipInputStream(new FileInputStream(zipFile)));
		deploymentBuilder.deploy();
		return "toList";
	}

	//接收流程定义id
	private String id;
	public void setId(String id) {
		this.id = id;
	}
	
	/**
	 * 展示png图片
	 */
	public String showpng(){
		//获取png图片对应的输入流
		InputStream pngStream = processEngine.getRepositoryService().getProcessDiagram(id);
		//压入值栈Struts框架就可以得到png流
		ActionContext.getContext().getValueStack().set("pngStream", pngStream);
		return "showpng";
	}
	
	/**
	 * 删除流程定义
	 */
	public String delete(){
		String deltag = "0";
		//根据流程定义id，查询部署id
		ProcessDefinitionQuery query = processEngine.getRepositoryService().createProcessDefinitionQuery();
		query.processDefinitionId(id);
		ProcessDefinition processDefinition = query.singleResult();
		String deploymentId = processDefinition.getDeploymentId();
		
		try {
			processEngine.getRepositoryService().deleteDeployment(deploymentId);
		} catch (Exception e) {
			deltag = "1";
			//当前删除的流程定义规则正在使用
			ActionContext.getContext().getValueStack().set("deltag", deltag);
			ProcessDefinitionQuery query2 = processEngine.getRepositoryService().createProcessDefinitionQuery();
			// ProcessDefinitionQuery query =
			// repositoryService.createProcessDefinitionQuery();
			// 查询最新的版本，排序，然后再执行查询。
			
			List<ProcessDefinition> list = query2.latestVersion().orderByProcessDefinitionName().desc().list();
			ActionContext.getContext().getValueStack().set("list", list);
			return "list";
		}
		return "toList";
	}
}
