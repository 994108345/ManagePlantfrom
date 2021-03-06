package com.manageplantfrom.dao;

import com.manageplantfrom.base.DaoSupport;
import com.manageplantfrom.entity.PHCSMP_Suspect;

/**
 * 嫌疑人信息的dao层代码
 * @author wuhaifei
 * @d2016年8月14日
 */
public interface SuspectDao extends DaoSupport<PHCSMP_Suspect> {

	/**
	 * 保存嫌疑人信息到数据库
	 * @param model
	 */
	void suspectDao(PHCSMP_Suspect model);

	/**
	 * 根据激活码与手环id查询嫌疑人信息
	 * @param roomId
	 * @param bandId
	 * @return
	 */
	PHCSMP_Suspect findInfroByActiveCodeAndBandID(int roomId, int bandId);
	/**
	 * 根据ActiveCode查找用户信息
	 * @param roomId
	 * @return
	 */
	PHCSMP_Suspect findInfroByActiveCode(int roomId);
	/**
	 * 根据手环id更新信息
	 * @param bandId
	 * @param roomId
	 * @return 
	 */
	int updateSuspectInforByBandId(int bandId, int roomId);

}
