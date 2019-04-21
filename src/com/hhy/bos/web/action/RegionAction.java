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
 * 区域管理
 * @author hehaiyang
 *
 */
@Controller
@Scope("prototype")
public class RegionAction extends BaseAction<Region>{
	@Autowired
	private IRegionService regionService;
	
	//接收上传的文件
	private File myFile;
	public void setMyFile(File myFile) {
		this.myFile = myFile;
	}


	/**
	 * 批量导入方法
	 * @throws Exception 
	 * @throws FileNotFoundException 
	 */
	public String importXls() throws Exception{
		String flag = "1";
		try {
			//使用POI解析Excel文件
			HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream(myFile));
			//忽略第一行，从第二行开始读取
			
			//获得第一个sheet页
			HSSFSheet sheet = workbook.getSheetAt(0);
			List<Region> list = new ArrayList<Region>();
			
			for (Row row : sheet) {
				int rowNum = row.getRowNum();
				if (rowNum == 0) {
					//忽略第一行：标题行
					continue;
				}
				String id = row.getCell(0).getStringCellValue();
				String province = row.getCell(1).getStringCellValue();
				String city = row.getCell(2).getStringCellValue();
				String district = row.getCell(3).getStringCellValue();
				String postcode = row.getCell(4).getStringCellValue();
				Region region = new Region(id, province, city, district, postcode, null, null, null);
				//城市编码(城市拼音组成的字符串)--->>shijiazhuang
				city  = city.substring(0, city.length() - 1);
				String[] stringToPinyin = PinYin4jUtils.stringToPinyin(city);
				String citycode = StringUtils.join(stringToPinyin, "");
				//简码---->>HBSJZCA
				province  = province.substring(0, province.length() - 1);
				district  = district.substring(0, district.length() - 1);
				String info = province + city + district;//河北石家庄长安
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
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");//告诉浏览器解析数据的格式
		ServletActionContext.getResponse().getWriter().print(flag);
		return NONE;
	}

	/**
	 * 分页查询
	 * @throws IOException 
	 */
	public String pageQuery() throws IOException{
		regionService.pageQuery(pageBean);
		this.writePageBean2Json(pageBean, new String[]{"currentPage","detachedCriteria","pageSize"});
		return NONE;
	}
	
	/**
	 * 查询所有的区域数据吗，返回json
	 * @throws IOException 
	 */
	public String listajax() throws IOException{
		List<Region> list = regionService.findAll();
		String[] excludes = new String[]{"subareas"};
		this.writeList2Json(list, excludes);
		return NONE;
	}

}
