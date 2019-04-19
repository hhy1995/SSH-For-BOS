package com.hhy.bos.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Staff;
import com.hhy.bos.service.IStaffService;
import com.hhy.bos.web.action.base.BaseAction;

/**
 * ȡ��Ա������
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class StaffAction extends BaseAction<Staff>{
	//ע��Service
	@Autowired
	private IStaffService staffService;
	
	/**
	 * ���ȡ��Ա
	 */
	public String add() {
		staffService.save(model);
		return "list";
	}
}
