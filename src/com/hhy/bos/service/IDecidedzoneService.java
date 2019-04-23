package com.hhy.bos.service;

import com.hhy.bos.domain.Decidedzone;
import com.hhy.bos.utils.PageBean;

public interface IDecidedzoneService {

	public void save(Decidedzone model, String[] subareaid);

	public void pageQuery(PageBean pageBean);

}
