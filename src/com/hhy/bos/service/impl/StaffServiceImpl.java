package com.hhy.bos.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hhy.bos.dao.IStaffDao;
import com.hhy.bos.domain.Staff;
import com.hhy.bos.service.IStaffService;

@Service
@Transactional
public class StaffServiceImpl implements IStaffService{
	//×¢Èëdao
	@Autowired
	private IStaffDao staffDao;

	public void save(Staff model) {
		staffDao.save(model);
	}
}
