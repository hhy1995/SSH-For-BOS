package com.hhy.test;

import org.apache.commons.lang.StringUtils;
import org.junit.Test;

import com.hhy.bos.utils.PinYin4jUtils;


public class Pinyin4JTest {
	@Test
	public void test01(){
		String province = "�ӱ�ʡ";
		String city = "ʯ��ׯ��";
		String district = "������";
		//���б���(����ƴ����ɵ��ַ���)--->>shijiazhuang
		city  = city.substring(0, city.length() - 1);
		String[] stringToPinyin = PinYin4jUtils.stringToPinyin(city);
		String citycode = StringUtils.join(stringToPinyin, "");
		System.out.println(citycode);
		
		//����---->>HBSJZCA
		province  = province.substring(0, province.length() - 1);
		district  = district.substring(0, district.length() - 1);
		String info = province + city + district;//�ӱ�ʯ��ׯ����
		String[] headByString = PinYin4jUtils.getHeadByString(info);
		String shortcode = StringUtils.join(headByString, "");
		System.out.println(shortcode);

	}
}
