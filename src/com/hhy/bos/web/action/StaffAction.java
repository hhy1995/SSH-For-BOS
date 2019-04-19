package com.hhy.bos.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Staff;
import com.hhy.bos.service.IStaffService;
import com.hhy.bos.web.action.base.BaseAction;

/**
 * 取派员管理；类
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class StaffAction extends BaseAction<Staff>{
	//注入Service
	@Autowired
	private IStaffService staffService;
	
	/**
	 * 添加取派员
	 */
	public String add() {
		staffService.save(model);
		return "list";
	}
}
