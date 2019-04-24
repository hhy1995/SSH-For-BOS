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
	 * ����ҵ��֪ͨ���������Զ��ֵ�
	 */
	public void save(Noticebill model) {
		noticebillDao.save(model);   //�־ö���(�������ɲ��Բ�ͬ���䱣��ģ�͵�ʱ��Ҳ��ͬ)
		
		//��ȡȡ����ַ
		String pickaddress = model.getPickaddress();
		//����ȡ����ַ����ѯ����id����crmϵͳ���н��в�ѯ
		String dId = proxy.findDecidedzoneIdByPickaddress(pickaddress);
		if (dId.length() != 0) {
			//�Ѿ���ѯ������id�����Խ����Զ��ֵ�
			Decidedzone decidedzone = decidedzoneDao.findById(dId);
			Staff staff = decidedzone.getStaff();
			//ҵ��֪ͨ����������ƥ�䵽��ȡ��Ա
			model.setStaff(staff);  
			model.setOrdertype("�Զ�");
			//��ҪΪȡ��Ա����һ������
			Workbill workbill = new Workbill();
			workbill.setAttachbilltimes(0);
			workbill.setBuildtime(new Timestamp(System.currentTimeMillis()));   //����������ʱ��
			workbill.setNoticebill(model);
			workbill.setPickstate("δȡ��"); //ȡ��״̬
			workbill.setStaff(staff);//��������ȡ��Ա
			workbill.setType("�µ�");
			
			workbillDao.save(workbill);//���湤��
			//���ö��ŷ���ƽ̨����ȡ��Ա���Ͷ���
			
		}else {
			//δ��ѯ������id,ת���˹��ֵ�
			model.setOrdertype("�˹�");
		}
	}
}
