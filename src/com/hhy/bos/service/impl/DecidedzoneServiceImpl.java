package com.hhy.bos.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hhy.bos.dao.IDecidedzoneDao;
import com.hhy.bos.dao.ISubareaDao;
import com.hhy.bos.domain.Decidedzone;
import com.hhy.bos.domain.Subarea;
import com.hhy.bos.service.IDecidedzoneService;
import com.hhy.bos.utils.PageBean;

@Service
@Transactional
public class DecidedzoneServiceImpl implements IDecidedzoneService{

	@Autowired
	private IDecidedzoneDao decidedzoneDao;
	@Autowired
	private ISubareaDao subareaDao;
	
	/**
	 * ��Ӷ���
	 */
	public void save(Decidedzone model, String[] subareaid) {
		decidedzoneDao.save(model);
		//������������Ͷ�������
		for (String sid : subareaid) {
			Subarea subarea = subareaDao.findById(sid);
			//������������������󣬶��һ�������ٵ�һ����   ��java����ʵ�֣���ִ�кܶ�select���
			//UPDATE Subarea SET decidedzone = ? WHERE id = ?;
			subarea.setDecidedzone(model);
		}
	}

	public void pageQuery(PageBean pageBean) {
		decidedzoneDao.pageQuery(pageBean);
	}

}
