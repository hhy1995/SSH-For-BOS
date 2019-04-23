package com.hhy.bos.web.action;

import java.io.IOException;

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
	/**
	 * 定区分页查询方法
	 * @return
	 * @throws IOException 
	 */
	public String pageQuery() throws IOException {
		decidedzoneService.pageQuery(pageBean);
		String[] excludes = new String[]{"subareas","decidedzones","currentPage","pageSize","detachedCriteria"};
		//查询到pageBean之后再转化成json对象
		this.writePageBean2Json(pageBean, excludes);
		return NONE;
	}
}
