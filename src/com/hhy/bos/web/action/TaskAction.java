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
 * 处理组任务
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class TaskAction extends ActionSupport {
	//注入组任务Service
	@Autowired
	private TaskService taskService;
	
	/**
	 * 查询组任务
	 */
	public String findGroupTask(){
		TaskQuery query = taskService.createTaskQuery();
		String candidateUser = BOSContext.getLoginUser().getId();
		//组任务过滤
		List<Task> list = query.taskCandidateUser(candidateUser).list();
		//压入值栈
		ActionContext.getContext().getValueStack().set("list", list);
		return "grouptasklist";
	}
}
