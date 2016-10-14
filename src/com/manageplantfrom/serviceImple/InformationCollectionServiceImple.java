package com.manageplantfrom.serviceImple;

import com.manageplantfrom.dao.InformationCollectionDao;
import com.manageplantfrom.daoImple.InformationCollectionDaoImple;
import com.manageplantfrom.entity.PHCSMP_Information_Collection;
import com.manageplantfrom.service.InformationCollectionService;
/**
 * 信息采集service层的实现
 * @author wuhaifei
 * @d2016年8月15日
 */
public class InformationCollectionServiceImple implements
		InformationCollectionService {
	private InformationCollectionDao dao = new InformationCollectionDaoImple();

	@Override
	public void saveCollectionInfor(PHCSMP_Information_Collection model) {
		dao.save(model);
	}
}
