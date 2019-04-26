package com.hhy.bos.shiro;

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

import com.hhy.bos.dao.IUserDao;
import com.hhy.bos.domain.User;

/**
 * �Զ���Realm
 * 
 * @author hehaiyang
 *
 */
public class BOSRealm extends AuthorizingRealm {
	
	@Resource
	private IUserDao userDao;
	/**
	 * ��֤����
	 */
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		System.out.println("��֤����!");
		UsernamePasswordToken upToken = (UsernamePasswordToken) token;
		String username = upToken.getUsername();// �������л���û���

		User user = userDao.findUserByUsername(username);
		if (user == null) {
			// �û���������
			return null;
		} else {
			// �û�������,�õ����ݿ⵱�е�����
			String password = user.getPassword();// ������ݿ��д洢������
			// ��������֤��Ϣ����
			/***
			 * ����һ��principal  ǩ�����������������λ�û�ȡ��ǰ����Ķ���
			 * ��������credentials ƾ֤ �� �����ݿ��в�ѯ��������
			 * ��������realmName  ��ǰrealm������
			 */
			SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user,
					password, this.getClass().getSimpleName());
			//���ظ���ȫ���������ɰ�ȫ����������ȶ����ݿ��в�ѯ���������ҳ���ύ������
			return info;
		}
	}
	/**
	 * ��Ȩ����
	 */
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		info.addStringPermission("staff");//Ϊ��ǰ�û�����staffȨ��
		//TODO ���ݵ�ǰ��¼�û�����ѯ���ݿ⣬����ѯ���Ӧ��Ȩ������
		info.addRole("staff");
		return info;
	}
}
