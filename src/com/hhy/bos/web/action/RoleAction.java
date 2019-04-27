package com.hhy.bos.web.action;

import java.io.IOException;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Function;
import com.hhy.bos.domain.Role;
import com.hhy.bos.web.action.base.BaseAction;

/**
 * ��ɫ����
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class RoleAction extends BaseAction<Role>{
	private String ids;  //����Ȩ��id
	public String getIds() {
		return ids;
	}
	public void setIds(String idS) {
		this.ids = idS;
	}
	/**
	 * ��ӽ�ɫ
	 */
	public String add(){
		roleService.save(model,ids);
		return "list";
	}
	/**
	 * ��ҳ��ѯ����
	 * @return
	 * @throws IOException 
	 */
	public String pageQuery() throws IOException{
		roleService.pageQuery(pageBean);
		this.writePageBean2Json(pageBean, new String[]{"functions","users"});
		return NONE;
	}
	
	/**
	 * ��ѯ���еĽ�ɫ���ݣ�����json
	 * @return
	 * @throws IOException 
	 */
	public String listajax() throws IOException{
		List<Role> list = roleService.findAll();
		String[] excludes = new String[]{"functions","users"};
		this.writeList2Json(list, excludes);
		return NONE;
	}
	
}
