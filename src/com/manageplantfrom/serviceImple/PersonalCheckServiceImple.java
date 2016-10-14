package com.manageplantfrom.serviceImple;

import com.manageplantfrom.dao.PersonalCheckDao;
import com.manageplantfrom.daoImple.PersonalCheckDaoImple;
import com.manageplantfrom.entity.PHCSMP_Personal_Check;
import com.manageplantfrom.service.PersonalCheckService;

public class PersonalCheckServiceImple implements PersonalCheckService {
	
	private PersonalCheckDao dao = new PersonalCheckDaoImple();

	@Override
	public void saveCheckPersonInfor(PHCSMP_Personal_Check model) {
		dao.save(model);
	}
}
