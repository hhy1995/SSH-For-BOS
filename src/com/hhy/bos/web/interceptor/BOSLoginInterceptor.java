package com.hhy.bos.web.interceptor;

import org.apache.struts2.ServletActionContext;

import com.hhy.bos.domain.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
/**
 * �Զ���Struts2����������ʵ���û���δ��¼������£����ص���¼ҳ��
 * @author hehaiyang
 *
 */
public class BOSLoginInterceptor extends MethodFilterInterceptor{
	//���ط���
	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
//		ActionProxy proxy = invocation.getProxy();
//		String nameSapce = proxy.getNamespace();
//		String actionName = proxy.getActionName();
//		String url = nameSapce + actionName;
//		System.out.println("������ִ����" + url);
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("loginUser");
		if (user == null) {
			//δ��¼����ת����¼ҳ��
			return "login";
		}
		return invocation.invoke();   //����
	}

}
