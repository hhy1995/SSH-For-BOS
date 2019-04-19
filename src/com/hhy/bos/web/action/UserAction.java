package com.hhy.bos.web.action;

import java.io.IOException;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.User;
import com.hhy.bos.service.IUserService;
import com.hhy.bos.utils.MD5Utils;
import com.hhy.bos.web.action.base.BaseAction;



@Controller
@Scope("prototype")
public class UserAction extends BaseAction<User>{
	
	@Resource
	private IUserService userService;
	
	//ͨ������������������֤��
	private String checkcode;
	public String login() {
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
	
}
