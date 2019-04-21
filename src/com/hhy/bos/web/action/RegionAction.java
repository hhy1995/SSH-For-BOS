package com.hhy.bos.web.action;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hhy.bos.domain.Region;
import com.hhy.bos.service.IRegionService;
import com.hhy.bos.utils.PinYin4jUtils;
import com.hhy.bos.web.action.base.BaseAction;


/**
 * �������
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class RegionAction extends BaseAction<Region>{
	@Autowired
	private IRegionService regionService;
	
	//�����ϴ����ļ�
	private File myFile;
	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}


	/**
	 * �������뷽��
	 * @throws Exception 
	 * @throws FileNotFoundException 
	 */
	public String importXls() throws Exception{
		String flag = "1";
		try {
			//ʹ��POI����Excel�ļ�
			HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream(myFile));
			//���Ե�һ�У��ӵڶ��п�ʼ��ȡ
			
			//��õ�һ��sheetҳ
			HSSFSheet sheet = workbook.getSheetAt(0);
			List<Region> list = new ArrayList<Region>();
			
			for (Row row : sheet) {
				int rowNum = row.getRowNum();
				if (rowNum == 0) {
					//���Ե�һ�У�������
					continue;
				}
				String id = row.getCell(0).getStringCellValue();
				String province = row.getCell(1).getStringCellValue();
				String city = row.getCell(2).getStringCellValue();
				String district = row.getCell(3).getStringCellValue();
				String postcode = row.getCell(4).getStringCellValue();
				Region region = new Region(id, province, city, district, postcode, null, null, null);
				//���б���(����ƴ����ɵ��ַ���)--->>shijiazhuang
				city  = city.substring(0, city.length() - 1);
				String[] stringToPinyin = PinYin4jUtils.stringToPinyin(city);
				String citycode = StringUtils.join(stringToPinyin, "");
				//����---->>HBSJZCA
				province  = province.substring(0, province.length() - 1);
				district  = district.substring(0, district.length() - 1);
				String info = province + city + district;//�ӱ�ʯ��ׯ����
				String[] headByString = PinYin4jUtils.getHeadByString(info);
				String shortcode = StringUtils.join(headByString, "");
				
				region.setCitycode(citycode);
				region.setShortcode(shortcode);
				list.add(region);
			}
			regionService.saveBatch(list);
		} catch (Exception e) {
			flag = "0";
		}
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");//����������������ݵĸ�ʽ
		ServletActionContext.getResponse().getWriter().print(flag);
		return NONE;
	}

	/**
	 * ��ҳ��ѯ
	 * @throws IOException 
	 */
	public String pageQuery() throws IOException{
		regionService.pageQuery(pageBean);
		this.writePageBean2Json(pageBean, new String[]{"currentPage","detachedCriteria","pageSize"});
		return NONE;
	}
	
	/**
	 * ��ѯ���е����������𣬷���json
	 * @throws IOException 
	 */
	public String listajax() throws IOException{
		List<Region> list = regionService.findAll();
		String[] excludes = new String[]{"subareas"};
		this.writeList2Json(list, excludes);
		return NONE;
	}

}
