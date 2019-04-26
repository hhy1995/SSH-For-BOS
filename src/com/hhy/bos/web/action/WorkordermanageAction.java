package com.hhy.bos.web.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Workordermanage;
import com.hhy.bos.web.action.base.BaseAction;

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
}
