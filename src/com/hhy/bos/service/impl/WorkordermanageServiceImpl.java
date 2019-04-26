package com.hhy.bos.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hhy.bos.dao.IWorkordermanageDao;
import com.hhy.bos.domain.Workordermanage;
import com.hhy.bos.service.IWorkordermanageService;

@Service
@Transactional
public class WorkordermanageServiceImpl implements IWorkordermanageService{
	@Autowired
	private IWorkordermanageDao workordermanageDao;

	public void save(Workordermanage model) {
		model.setUpdatetime(new Date());
		workordermanageDao.save(model);
	}
}
