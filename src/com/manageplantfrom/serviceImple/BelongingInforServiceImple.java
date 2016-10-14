package com.manageplantfrom.serviceImple;

import com.manageplantfrom.dao.BelongingInforDao;
import com.manageplantfrom.daoImple.BelongingInforDaoImple;
import com.manageplantfrom.entity.PHCSMP_BelongingS;
import com.manageplantfrom.service.BelongingInforService;

/**
 * 随身物品检查记录的service层代码实现
 * @author wuhaifei
 * @d2016年8月16日
 */
public class BelongingInforServiceImple implements BelongingInforService {
	private BelongingInforDao dao = new BelongingInforDaoImple();

	@Override
	public void saveBelongingInfor(PHCSMP_BelongingS model) {
		dao.save(model);
	}
}
