package com.hhy.bos.utils;
import java.util.List;

/**
 * ��װ��ҳ��Ϣ
 * @author hehaiyang
 *
 */
import org.hibernate.criterion.DetachedCriteria;

public class PageBean {
	private int currentPage;//��ǰҳ��
	private int pageSize;//ÿҳ��ʾ�ļ�¼��
	private int total;//�ܵļ�¼��
	private DetachedCriteria detachedCriteria;  //����������ѯ���󣬰�װ��ѯ����
	private List rows;//��ǰҳ��Ҫչʾ�����ݵļ���
	
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public DetachedCriteria getDetachedCriteria() {
		return detachedCriteria;
	}
	public void setDetachedCriteria(DetachedCriteria detachedCriteria) {
		this.detachedCriteria = detachedCriteria;
	}
	public List getRows() {
		return rows;
	}
	public void setRows(List rows) {
		this.rows = rows;
	}
	
}
