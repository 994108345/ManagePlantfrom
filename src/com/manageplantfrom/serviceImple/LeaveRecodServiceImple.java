package com.manageplantfrom.serviceImple;

import com.manageplantfrom.dao.LeaveRecodDao;
import com.manageplantfrom.daoImple.LeaveRecodDaoImple;
import com.manageplantfrom.entity.PHCSMP_Leave_Record;
import com.manageplantfrom.service.LeaveRecodService;

public class LeaveRecodServiceImple implements LeaveRecodService {
	private LeaveRecodDao dao = new LeaveRecodDaoImple();

	@Override
	public void saveLeaveRecordInfor(PHCSMP_Leave_Record model) {
		dao.save(model);
	}
	
}
