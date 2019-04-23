package com.hhy.bos.web.action;

import java.io.IOException;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Decidedzone;
import com.hhy.bos.web.action.base.BaseAction;

/**
 * �Զ������й���
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class DecidedzoneAction extends BaseAction<Decidedzone> {
	//���� ����id
	public String[] subareaid;

	public void setSubareaid(String[] subareaid) {
		this.subareaid = subareaid;
	}
	
	/**
	 * ��ӷ���
	 * @return
	 */
	public String add(){
		decidedzoneService.save(model,subareaid);
		return "list";
	}
	/**
	 * ������ҳ��ѯ����
	 * @return
	 * @throws IOException 
	 */
	public String pageQuery() throws IOException {
		decidedzoneService.pageQuery(pageBean);
		String[] excludes = new String[]{"subareas","decidedzones","currentPage","pageSize","detachedCriteria"};
		//��ѯ��pageBean֮����ת����json����
		this.writePageBean2Json(pageBean, excludes);
		return NONE;
	}
}
