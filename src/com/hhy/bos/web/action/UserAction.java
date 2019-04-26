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
	
	//ͨ������������������֤��
	private String checkcode;
	/**
	 * ʹ��shiro�ṩ����֤�취������֤
	 * @return
	 */
	public String login() {		
		//���ɵ���֤��
		String key = (String)ServletActionContext.getRequest().getSession().getAttribute("key");
		//�ж��û��������֤���Ƿ�����ȷ��
		if (StringUtils.isNotBlank(checkcode) && checkcode.equals(key)) {
			//��֤����ȷ
			Subject subject = SecurityUtils.getSubject();	//��õ�ǰ���û�������״̬��δ��֤
			String password = model.getPassword();
			password = MD5Utils.md5(password);
			//����һ���û���������(���û��������װ��һ��Token����)
			AuthenticationToken token = new UsernamePasswordToken(model.getUsername(),password);
			try {
				subject.login(token);
			} catch (UnknownAccountException e) {
				e.printStackTrace();
				//���ô�����Ϣ
				this.addActionError(this.getText("usernamenotfound"));
				return "login";
			}catch (Exception e) {
				e.printStackTrace();
				//���ô�����Ϣ
				this.addActionError(this.getText("loginError"));
				return "login";
			}
			//��ȡ��֤��Ϣ�����д洢��User����
			User user = (User) subject.getPrincipal();
			ServletActionContext.getRequest().getSession().setAttribute("loginUser", user);
			return "home";
		}else {
			//��֤�����Ļ�����ʾһЩ��Ϣ�����·��ص���¼ҳ��
			this.addActionError(this.getText("validateCodeError"));
			return "login";
		}
	}
	
	
	
	public String login_back() {		
		ValueStack valueStack = ActionContext.getContext().getValueStack();
		
		//���ɵ���֤��
		String key = (String)ServletActionContext.getRequest().getSession().getAttribute("key");
		
		//�ж��û��������֤���Ƿ�����ȷ��
		if (StringUtils.isNotBlank(checkcode) && checkcode.equals(key)) {
			//��֤����ȷ
			User user = userService.login(model);
			if (user != null) {
				//��¼�ɹ�����User����session����ת��ϵͳ��ҳ
				ServletActionContext.getRequest().getSession().setAttribute("loginUser", user);
				return "home";
			}else {
				//��¼ʧ�ܵĻ�����ʾһЩ��Ϣ��Ȼ������ת��ҳ��
				this.addActionError(this.getText("loginError"));
				return "login";
			}
		}else {
			//��֤�����Ļ�����ʾһЩ��Ϣ�����·��ص���¼ҳ��
			this.addActionError(this.getText("validateCodeError"));
			return "login";
		}
	}
	public void setCheckcode(String checkcode) {
		this.checkcode = checkcode;
	}
	
	/**
	 * �û��˳�����
	 */
	public String logout() {
		//����session
		ServletActionContext.getRequest().getSession().invalidate();
		return "login";
	}
	
	/**
	 * �޸ĵ�ǰ�û���¼����
	 * @throws IOException 
	 */
	public String editPassword() throws IOException {
		User user = (User) ServletActionContext.getRequest().getSession().getAttribute("loginUser");
		String password = model.getPassword();  //������
		password = MD5Utils.md5(password);
		//user.setPassword(password);
		//userService.update(user);   //�������������⣬�൱�ڽ�User���е����е��û�������һ�飬����һ��ͨ�õĸ��·���
		String flag = "1";
		try {
			userService.editPassword(password,user.getId());
		} catch (Exception e) {
			//�޸�����ʧ��
			flag = "0";
		}
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");//����������������ݵĸ�ʽ
		ServletActionContext.getResponse().getWriter().print(flag);
		return NONE;
	}
	
	/**
	 * �û���ҳ��ѯ
	 * @throws IOException 
	 */
	public String pageQuery() throws IOException{
		userService.pageQuery(pageBean);
		String[] excludes = new String[]{"noticebills","roles"};
		this.writePageBean2Json(pageBean, excludes);
		return NONE;
	}
}
