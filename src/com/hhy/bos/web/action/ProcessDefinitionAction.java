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
 * ���̶������
 * 
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class ProcessDefinitionAction extends ActionSupport {
	// @Autowired
	// private RepositoryService repositoryService;
	// ��ȡ������������
	

	ProcessEngine processEngine = ProcessEngines.getDefaultProcessEngine();
	/**
	 * ��ѯ���°汾���̶����б�����
	 */
	public String list() {
		ProcessDefinitionQuery query = processEngine.getRepositoryService().createProcessDefinitionQuery();
		// ProcessDefinitionQuery query =
		// repositoryService.createProcessDefinitionQuery();
		// ��ѯ���µİ汾������Ȼ����ִ�в�ѯ��
		List<ProcessDefinition> list = query.latestVersion().orderByProcessDefinitionName().desc().list();
		ActionContext.getContext().getValueStack().set("list", list);
		return "list";
	}

	// ���ڽ����ϴ��ļ�
	private File zipFile;

	public void setZipFile(File zipFile) {
		this.zipFile = zipFile;
	}

	/**
	 * �������̶���
	 * @throws FileNotFoundException 
	 */
	public String deploy() throws FileNotFoundException{
		DeploymentBuilder deploymentBuilder = processEngine.getRepositoryService().createDeployment();
		deploymentBuilder.addZipInputStream(new ZipInputStream(new FileInputStream(zipFile)));
		deploymentBuilder.deploy();
		return "toList";
	}

	//�������̶���id
	private String id;
	public void setId(String id) {
		this.id = id;
	}
	
	/**
	 * չʾpngͼƬ
	 */
	public String showpng(){
		//��ȡpngͼƬ��Ӧ��������
		InputStream pngStream = processEngine.getRepositoryService().getProcessDiagram(id);
		//ѹ��ֵջStruts��ܾͿ��Եõ�png��
		ActionContext.getContext().getValueStack().set("pngStream", pngStream);
		return "showpng";
	}
	
	/**
	 * ɾ�����̶���
	 */
	public String delete(){
		String deltag = "0";
		//�������̶���id����ѯ����id
		ProcessDefinitionQuery query = processEngine.getRepositoryService().createProcessDefinitionQuery();
		query.processDefinitionId(id);
		ProcessDefinition processDefinition = query.singleResult();
		String deploymentId = processDefinition.getDeploymentId();
		
		try {
			processEngine.getRepositoryService().deleteDeployment(deploymentId);
		} catch (Exception e) {
			deltag = "1";
			//��ǰɾ�������̶����������ʹ��
			ActionContext.getContext().getValueStack().set("deltag", deltag);
			ProcessDefinitionQuery query2 = processEngine.getRepositoryService().createProcessDefinitionQuery();
			// ProcessDefinitionQuery query =
			// repositoryService.createProcessDefinitionQuery();
			// ��ѯ���µİ汾������Ȼ����ִ�в�ѯ��
			
			List<ProcessDefinition> list = query2.latestVersion().orderByProcessDefinitionName().desc().list();
			ActionContext.getContext().getValueStack().set("list", list);
			return "list";
		}
		return "toList";
	}
}
