package com.hhy.bos.web.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Decidedzone;
import com.hhy.bos.web.action.base.BaseAction;

/**
 * 对定区进行管理
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class DecidedzoneAction extends BaseAction<Decidedzone> {
	//接收 分区id
	public String[] subareaid;

	public void setSubareaid(String[] subareaid) {
		this.subareaid = subareaid;
	}
	
	/**
	 * 添加分区
	 * @return
	 */
	public String add(){
		decidedzoneService.save(model,subareaid);
		return "list";
	}
}
