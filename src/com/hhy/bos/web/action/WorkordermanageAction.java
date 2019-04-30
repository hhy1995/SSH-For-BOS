package com.hhy.bos.web.action;

import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Workordermanage;
import com.hhy.bos.web.action.base.BaseAction;
import com.opensymphony.xwork2.ActionContext;

/**
 * ����������
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
	 * ��ѯstart״̬Ϊ0�Ĺ�����
	 */
	public String list(){
		List<Workordermanage> list =  workordermanageService.findListNotStart();
		ActionContext.getContext().getValueStack().set("list", list);
		return "list";
	}
	
	/**
	 * ���������������̶�Ӧ������ʵ��
	 */
	public String start(){
		//��������ʵ�����������̱������޸Ĺ��������е�startΪ��1��
		String id = model.getId();  //������id
		workordermanageService.start();
		return "tolist";
	}
}
