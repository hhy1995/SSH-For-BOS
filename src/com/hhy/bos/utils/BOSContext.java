package com.hhy.bos.utils;

import org.apache.struts2.ServletActionContext;

import com.hhy.bos.domain.User;
/**
 * ��ȡ��ǰϵͳ��½���û�
 * @author hehaiyang
 */
public class BOSContext {
	public static User getLoginUser(){
		return (User) ServletActionContext.getRequest().getSession().getAttribute("loginUser");
	}
}
