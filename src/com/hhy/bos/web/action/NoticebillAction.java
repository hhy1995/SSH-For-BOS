package com.hhy.bos.web.action;

import java.io.IOException;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Noticebill;
import com.hhy.bos.domain.User;
import com.hhy.bos.utils.BOSContext;
import com.hhy.bos.web.action.base.BaseAction;
import com.hhy.crm.domain.Customer;
import com.sun.org.apache.xml.internal.resolver.helpers.PublicId;

@Controller
@Scope("prototype")
public class NoticebillAction extends BaseAction<Noticebill>{
	/**
	 * 调用代理对象，根据手机号来查看客户的信息.   如果是ajax请求，返回NONE。   其他请求需要返回到相关的页面。
	 * @throws IOException 
	 */
	public String findCustomerByTelephone() throws IOException{
		Customer customer = customerService.findCustomerByPhonenumber(model.getTelephone());
		String[] excludes = new String[]{};
		this.writeObject2Json(customer, excludes );
		return NONE;
	}
	
	/**
	 * 保存业务通知单，尝试实现自动分单
	 * @return
	 */
	public String add(){
		User user = BOSContext.getLoginUser();
		model.setUser(user);
		noticebillService.save(model);
		return "addUI";
	}
}
