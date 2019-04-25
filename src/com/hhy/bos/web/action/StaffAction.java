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
	
	
	
	/**
	 * 添加取派员
	 */
	public String add() {
		staffService.save(model);
		return "list";
	}
	
	/**
	 * 分页查询方法，要注意数据库当中关联的字段长度要保持一致，在多表级联查询时会出现问题
	 * @throws IOException 
	 */
	public String pageQuery() throws IOException{
	
		staffService.pageQuery(pageBean);  //最终使用的是BaseDao当中的query方法
		this.writePageBean2Json(pageBean, new String[]{"currentPage","detachedCriteria","pageSize","decidedzones"});
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
	
	/**
	 * 修改取派员信息
	 */
	public String edit(){
		//先查询数据库原始数据
		Staff staff = staffService.findById(model.getId());   //这个staff对象是从数据库当中直接查出来的。是持久对象，下面是对于持久对象的修改。  修改完再写回数据库
		//再按照页面提交的参数进行覆盖
		staff.setName(model.getName());
		staff.setTelephone(model.getTelephone());
		staff.setHaspda(model.getStation());
		staff.setHaspda(model.getHaspda());
		staff.setStandard(model.getStandard());
		
		staffService.update(staff);
		return "list";
	}
	
	/**
	 * 查询没有作废的取派员，返回json
	 * @throws IOException 
	 */
	public String listajax() throws IOException{
		List<Staff> list = staffService.findListNotDelete();
		String[] excludes = new String[]{"decidedzones"};
		this.writeList2Json(list, excludes);
		return NONE;
	}
}
