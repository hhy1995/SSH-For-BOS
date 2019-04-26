package com.hhy.bos.web.action;

import java.io.IOException;


import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.User;
import com.hhy.bos.utils.MD5Utils;
import com.hhy.bos.web.action.base.BaseAction;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;



@Controller
@Scope("prototype")
public class UserAction extends BaseAction<User>{
	
	//通过属性驱动来接收验证码
	private String checkcode;
	/**
	 * 使用shiro提供的认证办法进行认证
	 * @return
	 */
	public String login() {		
		//生成的验证码
		String key = (String)ServletActionContext.getRequest().getSession().getAttribute("key");
		//判断用户输入的验证码是否是正确的
		if (StringUtils.isNotBlank(checkcode) && checkcode.equals(key)) {
			//验证码正确
			Subject subject = SecurityUtils.getSubject();	//获得当前“用户”对象，状态：未认证
			String password = model.getPassword();
			password = MD5Utils.md5(password);
			//构造一个用户密码令牌(将用户和密码包装成一个Token令牌)
			AuthenticationToken token = new UsernamePasswordToken(model.getUsername(),password);
			try {
				subject.login(token);
			} catch (UnknownAccountException e) {
				e.printStackTrace();
				//设置错误信息
				this.addActionError(this.getText("usernamenotfound"));
				return "login";
			}catch (Exception e) {
				e.printStackTrace();
				//设置错误信息
				this.addActionError(this.getText("loginError"));
				return "login";
			}
			//获取认证信息对象中存储的User对象
			User user = (User) subject.getPrincipal();
			ServletActionContext.getRequest().getSession().setAttribute("loginUser", user);
			return "home";
		}else {
			//验证码错误的话，提示一些信息，重新返回到登录页面
			this.addActionError(this.getText("validateCodeError"));
			return "login";
		}
	}
	
	
	
	public String login_back() {		
		ValueStack valueStack = ActionContext.getContext().getValueStack();
		
		//生成的验证码
		String key = (String)ServletActionContext.getRequest().getSession().getAttribute("key");
		
		//判断用户输入的验证码是否是正确的
		if (StringUtils.isNotBlank(checkcode) && checkcode.equals(key)) {
			//验证码正确
			User user = userService.login(model);
			if (user != null) {
				//登录成功，将User放入session域，跳转到系统首页
				ServletActionContext.getRequest().getSession().setAttribute("loginUser", user);
				return "home";
			}else {
				//登录失败的话，提示一些信息，然后再跳转到页面
				this.addActionError(this.getText("loginError"));
				return "login";
			}
		}else {
			//验证码错误的话，提示一些信息，重新返回到登录页面
			this.addActionError(this.getText("validateCodeError"));
			return "login";
		}
	}
	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}
	
	/**
	 * 用户退出方法
	 */
	public String logout() {
		//销毁session
		ServletActionContext.getRequest().getSession().invalidate();
		return "login";
	}
	
	/**
	 * 修改当前用户登录密码
	 * @throws IOException 
	 */
	public String editPassword() throws IOException {
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("loginUser");
		String password = model.getPassword();  //新密码
		password = MD5Utils.md5(password);
		//user.setPassword(password);
		//userService.update(user);   //这样做存在问题，相当于将User表中的所有的用户又重置一遍，设置一个通用的更新方法
		String flag = "1";
		try {
			userService.editPassword(password,user.getId());
		} catch (Exception e) {
			//修改密码失败
			flag = "0";
		}
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");//告诉浏览器解析数据的格式
		ServletActionContext.getResponse().getWriter().print(flag);
		return NONE;
	}
	
	/**
	 * 用户分页查询
	 * @throws IOException 
	 */
	public String pageQuery() throws IOException{
		userService.pageQuery(pageBean);
		String[] excludes = new String[]{"noticebills","roles"};
		this.writePageBean2Json(pageBean, excludes);
		return NONE;
	}
}
