package com.manageplantfrom.service;

import java.util.List;

import com.manageplantfrom.base.DaoSupport;
import com.manageplantfrom.entity.PHCSMP_Band;
import com.manageplantfrom.entity.PHCSMP_Suspect;

/**
 * 登录犯罪嫌疑人信息的service
 * @author wuhaifei
 * @d2016年8月14日
 */
public interface SuspectService extends DaoSupport<PHCSMP_Suspect> {
	/**
	 * 保存嫌疑人信息到数据库
	 * @param model
	 */
	void saveSuspectInfor(PHCSMP_Suspect model);
	
	/**
	 * 根据房间号与手环编号查找嫌疑人信息
	 * @param roomId
	 * @param bandId
	 * @return
	 */
	PHCSMP_Suspect findInfroByActiveCodeAndBandID(int roomId, int bandId);
	
	/**
	 * 查出所有的手环信息，用于用户注册
	 * @return
	 */
	List<PHCSMP_Band> findAllBundInfor();

	/**
	 * 根据激活码查找嫌疑人信息
	 * @param roomId 房间号
	 * @return 嫌疑人的实体类信息
	 */
	PHCSMP_Suspect findInfroByActiveCode(int roomId);
	/**
	 * 根据手环id更新activeCode
	 * @param bandId 手环id
	 * @param roomId 房间号
	 * @return 
	 */
	int updateSuspectInforByBandId(int bandId, int roomId);

}
