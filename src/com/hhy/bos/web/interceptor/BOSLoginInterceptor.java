package com.hhy.bos.web.interceptor;

import org.apache.struts2.ServletActionContext;

import com.hhy.bos.domain.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
/**
 * 自定义Struts2的拦截器，实现用户在未登录的情况下，返回到登录页面
 * @author hehaiyang
 *
 */
public class BOSLoginInterceptor extends MethodFilterInterceptor{
	//拦截方法
	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
//		ActionProxy proxy = invocation.getProxy();
//		String nameSapce = proxy.getNamespace();
//		String actionName = proxy.getActionName();
//		String url = nameSapce + actionName;
//		System.out.println("拦截器执行了" + url);
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("loginUser");
		if (user == null) {
			//未登录，跳转至登录页面
			return "login";
		}
		return invocation.invoke();   //放行
	}

}
