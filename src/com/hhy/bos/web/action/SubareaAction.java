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
 * 分区管理
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
		//在查询之前需要封装条件
		DetachedCriteria detachedCriteria2 = pageBean.getDetachedCriteria();
		String addresskey = model.getAddresskey();
		Region region = model.getRegion();
		if (StringUtils.isNotBlank(addresskey)) {
			//按照地址关键字进行查询
			detachedCriteria2.add(Restrictions.like("addresskey", addresskey));
		}
		
		if (region != null) {
			//创建别名，用于多表关联查询（这边没有像hql语句那样的对象导航）
			detachedCriteria2.createAlias("region", "r");
			String province = region.getProvince();
			String city = region.getCity();
			String district = region.getDistrict();
			
			if (StringUtils.isNotBlank(province)) {
				//按照省进行模糊查询
				detachedCriteria2.add(Restrictions.like("r.province", "%"+province+"%"));
			}
			if (StringUtils.isNotBlank(city)) {
				//按照省进行模糊查询
				detachedCriteria2.add(Restrictions.like("r.city", "%"+city+"%"));
			}
			if (StringUtils.isNotBlank(district)) {
				//按照省进行模糊查询
				detachedCriteria2.add(Restrictions.like("r.district", "%"+district+"%"));
			}
		}
		
		subareaService.pageQuery(pageBean);
		String[] excludes = new String[]{"currentPage","pageSize","detachedCriteria","decidedzone","subareas"};
		this.writePageBean2Json(pageBean, excludes);
		return NONE;
	}
	
	 /**
	 * 使用POI工具写入Excel文件，提供文件导出功能
	 * @throws IOException 
	 */
	public String exportXls() throws IOException {
		//查询出所有的分区
		List<Subarea> list = subareaService.findAll();
		// 在内存中创建一个Excel文件，通过输出流写到客户端提供下载
		HSSFWorkbook workbook = new HSSFWorkbook();
		// 创建一个sheet页
		HSSFSheet sheet = workbook.createSheet("分区数据信息");
		// 创建标题行
		HSSFRow headRow = sheet.createRow(0);
		headRow.createCell(0).setCellValue("分区编号");
		headRow.createCell(1).setCellValue("区域编号");
		headRow.createCell(2).setCellValue("地址关键字");
		headRow.createCell(3).setCellValue("省市区");

		for (Subarea subarea : list) {
			HSSFRow dataRow = sheet.createRow(sheet.getLastRowNum() + 1);
			dataRow.createCell(0).setCellValue(subarea.getId());
			dataRow.createCell(1).setCellValue(subarea.getRegion().getId());
			dataRow.createCell(2).setCellValue(subarea.getAddresskey());
			Region region = subarea.getRegion();
			dataRow.createCell(3).setCellValue(region.getProvince()+region.getCity()+region.getDistrict());
		}

		String filename = "分区数据.xls";
		//agent为浏览器类型，从请求消息头当中获得浏览器信息
		String agent = ServletActionContext.getRequest().getHeader("User-Agent");
		filename = FileUtils.encodeDownloadFilename(filename, agent);
		//文件输出流
		ServletOutputStream out = ServletActionContext.getResponse().getOutputStream();
		String contentType = ServletActionContext.getServletContext().getMimeType(filename);
		//消息响应头
		ServletActionContext.getResponse().setContentType(contentType);
		//以附件的形式进行下载
		ServletActionContext.getResponse().setHeader("content-disposition", "attchment;filename="+filename);
		workbook.write(out);
		return NONE;
	}
	/**
	 * 查询未关联到的分区数据
	 * @throws IOException 
	 */
	public String listajax() throws IOException{
		List<Subarea> list = subareaService.findListNotAssociation();
		String[] excludes = new String[]{"decidedzone","region"};
		this.writeList2Json(list, excludes);
		return NONE;
	}
}
