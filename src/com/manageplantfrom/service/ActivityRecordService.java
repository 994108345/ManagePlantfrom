package com.manageplantfrom.service;

import com.manageplantfrom.base.DaoSupport;
import com.manageplantfrom.entity.PHCSMP_Activity_Record;

public interface ActivityRecordService extends DaoSupport<PHCSMP_Activity_Record> {
	/**
	 * 保存活动记录信息的方法
	 * @param model
	 */
	void saveActivityRecordInfor(PHCSMP_Activity_Record model);

}
