package com.hhy.bos.web.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Decidedzone;
import com.hhy.bos.web.action.base.BaseAction;

/**
 * �Զ������й���
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class DecidedzoneAction extends BaseAction<Decidedzone> {
	//���� ����id
	public String[] subareaid;

	public void setSubareaid(String[] subareaid) {
		this.subareaid = subareaid;
	}
	
	/**
	 * ��ӷ���
	 * @return
	 */
	public String add(){
		decidedzoneService.save(model,subareaid);
		return "list";
	}
}
