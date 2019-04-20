package com.hhy.bos.web.action;


import java.io.IOException;

import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Staff;
import com.hhy.bos.service.IStaffService;
import com.hhy.bos.utils.PageBean;
import com.hhy.bos.web.action.base.BaseAction;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

/**
 * ȡ��Ա������
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class StaffAction extends BaseAction<Staff>{
	//ע��Service
	@Autowired
	private IStaffService staffService;
	
	private int page;//ҳ��
	private int rows;//ÿҳ��ʾ�ļ�¼��
	
	
	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}
	
	/**
	 * ���ȡ��Ա
	 */
	public String add() {
		staffService.save(model);
		return "list";
	}
	
	/**
	 * ��ҳ��ѯ����
	 * @throws IOException 
	 */
	public String pageQuery() throws IOException{
		PageBean pageBean = new PageBean();
		pageBean.setCurrentPage(page);
		pageBean.setPageSize(rows);
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Staff.class);   //����������ѯ����
		pageBean.setDetachedCriteria(detachedCriteria);
		staffService.pageQuery(pageBean);  //����ʹ�õ���BaseDao���е�query����
		//��pageBean����ת����json���󷵻�
		JsonConfig jsonConfig = new JsonConfig();
		//����jsonConfig��json���л��Ķ���������ã��ų�һЩ����Ҫ�������л�������
		jsonConfig.setExcludes(new String[]{"currentPage","detachedCriteria","pageSize"});   
		JSONObject jsonObject = JSONObject.fromObject(pageBean, jsonConfig);
		String json = jsonObject.toString();
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");
		ServletActionContext.getResponse().getWriter().print(json);
		return NONE;
	}
	
	//����ids����
	private String ids;
	public void setIds(String ids) {
		this.ids = ids;
	}
	/**
	 * ����ɾ�����ܣ��߼�ɾ����
	 * @return
	 */
	public String delete(){
		staffService.deleteBatch(ids);
		return "list";
	}
}
