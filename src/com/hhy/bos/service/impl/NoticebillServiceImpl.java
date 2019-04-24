package com.hhy.bos.service.impl;

import java.sql.Timestamp;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hhy.bos.crm.CustomerService;
import com.hhy.bos.dao.IDecidedzoneDao;
import com.hhy.bos.dao.INoticebillDao;
import com.hhy.bos.dao.IWorkbillDao;
import com.hhy.bos.domain.Decidedzone;
import com.hhy.bos.domain.Noticebill;
import com.hhy.bos.domain.Staff;
import com.hhy.bos.domain.Workbill;
import com.hhy.bos.service.INoticebillService;

@Service
@Transactional
public class NoticebillServiceImpl implements INoticebillService{
	@Resource
	private INoticebillDao noticebillDao;
	@Resource
	private CustomerService proxy;
	@Resource
	private IDecidedzoneDao decidedzoneDao;
	@Resource
	private IWorkbillDao workbillDao;
	/**
	 * 保存业务通知单，尝试自动分单
	 */
	public void save(Noticebill model) {
		noticebillDao.save(model);   //持久对象(主键生成策略不同，其保存模型的时机也不同)
		
		//获取取件地址
		String pickaddress = model.getPickaddress();
		//根据取件地址来查询定区id，从crm系统当中进行查询
		String dId = proxy.findDecidedzoneIdByPickaddress(pickaddress);
		if (dId.length() != 0) {
			//已经查询到定区id，可以进行自动分单
			Decidedzone decidedzone = decidedzoneDao.findById(dId);
			Staff staff = decidedzone.getStaff();
			//业务通知单，关联到匹配到的取派员
			model.setStaff(staff);  
			model.setOrdertype("自动");
			//需要为取派员创建一个工单
			Workbill workbill = new Workbill();
			workbill.setAttachbilltimes(0);
			workbill.setBuildtime(new Timestamp(System.currentTimeMillis()));   //工单创建的时间
			workbill.setNoticebill(model);
			workbill.setPickstate("未取件"); //取件状态
			workbill.setStaff(staff);//工单关联取派员
			workbill.setType("新单");
			
			workbillDao.save(workbill);//保存工单
			//调用短信服务平台，给取派员发送短信
			
		}else {
			//未查询到定区id,转向人工分单
			model.setOrdertype("人工");
		}
	}
}
