package com.hhy.bos.web.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Workordermanage;
import com.hhy.bos.web.action.base.BaseAction;
import com.opensymphony.xwork2.ActionContext;

/**
 * 工作单管理
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class WorkordermanageAction extends BaseAction<Workordermanage>{
	public String add(){
		workordermanageService.save(model); 
		return NONE;
	}
	
	/**
	 * 查询start状态为0的工作单
	 */
	public String list(){
		List<Workordermanage> list =  workordermanageService.findListNotStart();
		ActionContext.getContext().getValueStack().set("list", list);
		return "list";
	}
	
	/**
	 * 启动物流配送流程对应的流程实例
	 */
	public String start(){
		//启动流程实例，设置流程变量，修改工作单当中的start为“1”
		String id = model.getId();  //工作单id
		workordermanageService.start();
		return "tolist";
	}
}
