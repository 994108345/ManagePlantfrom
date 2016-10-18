package com.manageplantfrom.service;

import com.manageplantfrom.base.DaoSupport;
import com.manageplantfrom.entity.PHCSMP_BelongingS;

/**
 * 随身物品检查记录的service层代码
 * @author wuhaifei
 * @d2016年8月16日
 */
public interface BelongingInforService extends DaoSupport<PHCSMP_BelongingS> {
	/**
	 * 保存随身物品检查记录
	 * @param model
	 */
	void saveBelongingInfor(PHCSMP_BelongingS model);

}
