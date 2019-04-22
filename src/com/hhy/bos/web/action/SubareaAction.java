package com.hhy.bos.web.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletOutputStream;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Region;
import com.hhy.bos.domain.Subarea;
import com.hhy.bos.utils.FileUtils;
import com.hhy.bos.web.action.base.BaseAction;

/**
 * ��������
 * @author hehaiyang
 * 
 */
@Controller
@Scope("prototype")
public class SubareaAction extends BaseAction<Subarea>{
	public String add(){
		subareaService.save(model);
		return "list";
	}
	
	public String pageQuery() throws IOException{
		//�ڲ�ѯ֮ǰ��Ҫ��װ����
		DetachedCriteria detachedCriteria2 = pageBean.getDetachedCriteria();
		String addresskey = model.getAddresskey();
		Region region = model.getRegion();
		if (StringUtils.isNotBlank(addresskey)) {
			//���յ�ַ�ؼ��ֽ��в�ѯ
			detachedCriteria2.add(Restrictions.like("addresskey", addresskey));
		}
		
		if (region != null) {
			//�������������ڶ�������ѯ�����û����hql��������Ķ��󵼺���
			detachedCriteria2.createAlias("region", "r");
			String province = region.getProvince();
			String city = region.getCity();
			String district = region.getDistrict();
			
			if (StringUtils.isNotBlank(province)) {
				//����ʡ����ģ����ѯ
				detachedCriteria2.add(Restrictions.like("r.province", "%"+province+"%"));
			}
			if (StringUtils.isNotBlank(city)) {
				//����ʡ����ģ����ѯ
				detachedCriteria2.add(Restrictions.like("r.city", "%"+city+"%"));
			}
			if (StringUtils.isNotBlank(district)) {
				//����ʡ����ģ����ѯ
				detachedCriteria2.add(Restrictions.like("r.district", "%"+district+"%"));
			}
		}
		
		subareaService.pageQuery(pageBean);
		String[] excludes = new String[]{"currentPage","pageSize","detachedCriteria","decidedzone","subareas"};
		this.writePageBean2Json(pageBean, excludes);
		return NONE;
	}
	
	 /**
	 * ʹ��POI����д��Excel�ļ����ṩ�ļ���������
	 * @throws IOException 
	 */
	public String exportXls() throws IOException {
		//��ѯ�����еķ���
		List<Subarea> list = subareaService.findAll();
		// ���ڴ��д���һ��Excel�ļ���ͨ�������д���ͻ����ṩ����
		HSSFWorkbook workbook = new HSSFWorkbook();
		// ����һ��sheetҳ
		HSSFSheet sheet = workbook.createSheet("����������Ϣ");
		// ����������
		HSSFRow headRow = sheet.createRow(0);
		headRow.createCell(0).setCellValue("�������");
		headRow.createCell(1).setCellValue("������");
		headRow.createCell(2).setCellValue("��ַ�ؼ���");
		headRow.createCell(3).setCellValue("ʡ����");

		for (Subarea subarea : list) {
			HSSFRow dataRow = sheet.createRow(sheet.getLastRowNum() + 1);
			dataRow.createCell(0).setCellValue(subarea.getId());
			dataRow.createCell(1).setCellValue(subarea.getRegion().getId());
			dataRow.createCell(2).setCellValue(subarea.getAddresskey());
			Region region = subarea.getRegion();
			dataRow.createCell(3).setCellValue(region.getProvince()+region.getCity()+region.getDistrict());
		}

		String filename = "��������.xls";
		//agentΪ��������ͣ���������Ϣͷ���л���������Ϣ
		String agent = ServletActionContext.getRequest().getHeader("User-Agent");
		filename = FileUtils.encodeDownloadFilename(filename, agent);
		//�ļ������
		ServletOutputStream out = ServletActionContext.getResponse().getOutputStream();
		String contentType = ServletActionContext.getServletContext().getMimeType(filename);
		//��Ϣ��Ӧͷ
		ServletActionContext.getResponse().setContentType(contentType);
		//�Ը�������ʽ��������
		ServletActionContext.getResponse().setHeader("content-disposition", "attchment;filename="+filename);
		workbook.write(out);
		return NONE;
	}
	/**
	 * ��ѯδ�������ķ�������
	 * @throws IOException 
	 */
	public String listajax() throws IOException{
		List<Subarea> list = subareaService.findListNotAssociation();
		String[] excludes = new String[]{"decidedzone","region"};
		this.writeList2Json(list, excludes);
		return NONE;
	}
}
