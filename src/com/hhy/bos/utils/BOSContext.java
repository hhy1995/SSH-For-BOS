package com.hhy.bos.utils;

import org.apache.struts2.ServletActionContext;

import com.hhy.bos.domain.User;
/**
 * 获取当前系统登陆的用户
 * @author hehaiyang
 */
public class BOSContext {
	public static User getLoginUser(){
		return (User) ServletActionContext.getRequest().getSession().getAttribute("loginUser");
	}
}
