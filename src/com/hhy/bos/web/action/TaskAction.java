package com.hhy.bos.web.action;

import java.util.List;

import org.activiti.engine.TaskService;
import org.activiti.engine.task.Task;
import org.activiti.engine.task.TaskQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.utils.BOSContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * ����������
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class TaskAction extends ActionSupport {
	//ע��������Service
	@Autowired
	private TaskService taskService;
	
	/**
	 * ��ѯ������
	 */
	public String findGroupTask(){
		TaskQuery query = taskService.createTaskQuery();
		String candidateUser = BOSContext.getLoginUser().getId();
		//���������
		List<Task> list = query.taskCandidateUser(candidateUser).list();
		//ѹ��ֵջ
		ActionContext.getContext().getValueStack().set("list", list);
		return "grouptasklist";
	}
}
