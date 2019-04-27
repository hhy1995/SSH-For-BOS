package com.hhy.bos.shiro;

import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import com.hhy.bos.dao.IFunctionDao;
import com.hhy.bos.dao.IUserDao;
import com.hhy.bos.domain.Function;
import com.hhy.bos.domain.User;

/**
 * 自定义Realm
 * 
 * @author hehaiyang
 *
 */
public class BOSRealm extends AuthorizingRealm {
	
	@Resource
	private IUserDao userDao;
	@Resource
	private IFunctionDao functionDao;
	/**
	 * 认证方法
	 */
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		System.out.println("认证方法!");
		UsernamePasswordToken upToken = (UsernamePasswordToken) token;
		String username = upToken.getUsername();// 从令牌中获得用户名

		User user = userDao.findUserByUsername(username);
		if (user == null) {
			// 用户名不存在
			return null;
		} else {
			// 用户名存在,拿到数据库当中的密码
			String password = user.getPassword();// 获得数据库中存储的密码
			// 创建简单认证信息对象
			/***
			 * 参数一：principal  签名，程序可以在任意位置获取当前放入的对象
			 * 参数二：credentials 凭证 ， 从数据库中查询出的密码
			 * 参数三：realmName  当前realm的名称
			 */
			SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user,
					password, this.getClass().getSimpleName());
			//返回给安全管理器，由安全管理器负责比对数据库中查询出的密码和页面提交的密码
			return info;
		}
	}
	/**
	 * 授权方法
	 */
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		//根据当前登录用户，查询其对应的权限，然后再进行授权
		User user = (User) principals.getPrimaryPrincipal();
		List<Function> list = null;
		if (user.getUsername().equals("admin")) {
			//当前用户是超级管理员，查询所有的权限，为用户进行授权
			list = functionDao.findAll();
		}else {
			//普通用户，根据用户的id查询其对应的权限
			list = functionDao.findListByUserid(user.getId());
		}
		for (Function function : list) {
			info.addStringPermission(function.getCode());;
		}
		return info;
	}
}
