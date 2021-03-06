package com.hhy.bos.service;

import java.util.List;

import com.hhy.bos.domain.Staff;
import com.hhy.bos.utils.PageBean;

public interface IStaffService {
	/**
	 * 保存员工信息
	 * @param model
	 */
	public void save(Staff model);

	public void pageQuery(PageBean pageBean);

	public void deleteBatch(String ids);

	public Staff findById(String id);

	public void update(Staff staff);

	public List<Staff> findListNotDelete();

}
