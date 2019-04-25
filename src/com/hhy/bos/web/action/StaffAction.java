package com.hhy.bos.web.action;


import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Staff;
import com.hhy.bos.service.IStaffService;
import com.hhy.bos.web.action.base.BaseAction;

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
	
	
	
	/**
	 * ���ȡ��Ա
	 */
	public String add() {
		staffService.save(model);
		return "list";
	}
	
	/**
	 * ��ҳ��ѯ������Ҫע�����ݿ⵱�й������ֶγ���Ҫ����һ�£��ڶ������ѯʱ���������
	 * @throws IOException 
	 */
	public String pageQuery() throws IOException{
	
		staffService.pageQuery(pageBean);  //����ʹ�õ���BaseDao���е�query����
		this.writePageBean2Json(pageBean, new String[]{"currentPage","detachedCriteria","pageSize","decidedzones"});
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
	
	/**
	 * �޸�ȡ��Ա��Ϣ
	 */
	public String edit(){
		//�Ȳ�ѯ���ݿ�ԭʼ����
		Staff staff = staffService.findById(model.getId());   //���staff�����Ǵ����ݿ⵱��ֱ�Ӳ�����ġ��ǳ־ö��������Ƕ��ڳ־ö�����޸ġ�  �޸�����д�����ݿ�
		//�ٰ���ҳ���ύ�Ĳ������и���
		staff.setName(model.getName());
		staff.setTelephone(model.getTelephone());
		staff.setHaspda(model.getStation());
		staff.setHaspda(model.getHaspda());
		staff.setStandard(model.getStandard());
		
		staffService.update(staff);
		return "list";
	}
	
	/**
	 * ��ѯû�����ϵ�ȡ��Ա������json
	 * @throws IOException 
	 */
	public String listajax() throws IOException{
		List<Staff> list = staffService.findListNotDelete();
		String[] excludes = new String[]{"decidedzones"};
		this.writeList2Json(list, excludes);
		return NONE;
	}
}
