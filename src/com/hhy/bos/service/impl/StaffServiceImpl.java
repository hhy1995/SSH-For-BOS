package com.hhy.bos.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hhy.bos.dao.IStaffDao;
import com.hhy.bos.domain.Staff;
import com.hhy.bos.service.IStaffService;
import com.hhy.bos.utils.PageBean;

@Service
@Transactional
public class StaffServiceImpl implements IStaffService{
	//ע��dao
	@Autowired
	private IStaffDao staffDao;

	public void save(Staff model) {
		staffDao.save(model);
	}

	public void pageQuery(PageBean pageBean) {
		staffDao.pageQuery(pageBean);
	}
	/**
	 * ����ɾ������
	 */
	public void deleteBatch(String ids) {
		String[] staffIds = ids.split(",");
		for (String id : staffIds) {
			//��Ҫ��Staff.hbm.xmlӳ���ļ����У���Ӹ��µ����
			staffDao.execteUpdate("staff.delete", id);
		}
	}

	public Staff findById(String id) {
		return staffDao.findById(id);
	}

	public void update(Staff staff) {
		staffDao.update(staff);
	}
}
