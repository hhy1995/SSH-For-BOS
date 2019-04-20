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
 * 取派员管理类
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class StaffAction extends BaseAction<Staff>{
	//注入Service
	@Autowired
	private IStaffService staffService;
	
	private int page;//页码
	private int rows;//每页显示的记录数
	
	
	public void setPage(int page) {
		this.page = page;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}
	
	/**
	 * 添加取派员
	 */
	public String add() {
		staffService.save(model);
		return "list";
	}
	
	/**
	 * 分页查询方法
	 * @throws IOException 
	 */
	public String pageQuery() throws IOException{
		PageBean pageBean = new PageBean();
		pageBean.setCurrentPage(page);
		pageBean.setPageSize(rows);
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Staff.class);   //离线条件查询对象
		pageBean.setDetachedCriteria(detachedCriteria);
		staffService.pageQuery(pageBean);  //最终使用的是BaseDao当中的query方法
		//将pageBean对象转化成json对象返回
		JsonConfig jsonConfig = new JsonConfig();
		//利用jsonConfig对json序列化的对象进行设置，排除一些不需要进行序列化的属性
		jsonConfig.setExcludes(new String[]{"currentPage","detachedCriteria","pageSize"});   
		JSONObject jsonObject = JSONObject.fromObject(pageBean, jsonConfig);
		String json = jsonObject.toString();
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");
		ServletActionContext.getResponse().getWriter().print(json);
		return NONE;
	}
	
	//接收ids参数
	private String ids;
	public void setIds(String ids) {
		this.ids = ids;
	}
	/**
	 * 批量删除功能（逻辑删除）
	 * @return
	 */
	public String delete(){
		staffService.deleteBatch(ids);
		return "list";
	}
}
