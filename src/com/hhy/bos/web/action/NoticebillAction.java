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
	 * ���ô�����󣬸����ֻ������鿴�ͻ�����Ϣ.   �����ajax���󣬷���NONE��   ����������Ҫ���ص���ص�ҳ�档
	 * @throws IOException 
	 */
	public String findCustomerByTelephone() throws IOException{
		Customer customer = customerService.findCustomerByPhonenumber(model.getTelephone());
		String[] excludes = new String[]{};
		this.writeObject2Json(customer, excludes );
		return NONE;
	}
	
	/**
	 * ����ҵ��֪ͨ��������ʵ���Զ��ֵ�
	 * @return
	 */
	public String add(){
		User user = BOSContext.getLoginUser();
		model.setUser(user);
		noticebillService.save(model);
		return "addUI";
	}
}
