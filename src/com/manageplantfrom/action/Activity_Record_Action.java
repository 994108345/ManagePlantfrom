package com.manageplantfrom.action;

import com.manageplantfrom.base.BaseAction;
import com.manageplantfrom.entity.PHCSMP_Activity_Record;
import com.manageplantfrom.entity.PHCSMP_Suspect;
import com.manageplantfrom.service.ActivityRecordService;
import com.manageplantfrom.service.SuspectService;
import com.manageplantfrom.serviceImple.ActivityRecordServiceImple;
import com.manageplantfrom.serviceImple.SuspectServiceImple;
import com.manageplantfrom.utils.CompleteCheck;

/**
 * 活动记录
 * @author wuhaifei
 * @d2016年9月28日
 */
public class Activity_Record_Action extends BaseAction<PHCSMP_Activity_Record> {
	
	public String addActivityRecordInfor() throws Exception{
		System.out.println("开始时间"+model.getStart_Time());
		
		Class<?> c = Class.forName(PHCSMP_Activity_Record.class.getName());//获取类的对象实例
		int count = CompleteCheck.IsEqualsNull(model, c);//获取已填写的字段
		
		ActivityRecordService service = new ActivityRecordServiceImple();
		service.saveActivityRecordInfor(model);
		
		return "addActivityRecordInfor";
	}
	
	public String loadInfor(){
//		
//		SuspectService suspectService = new SuspectServiceImple();
//		System.out.println("wuhaifei");
//		PHCSMP_Suspect SuspectInfor =  suspectService.findInfroByActiveCode(5);
////		//将信息从数据库查找到之后，存入session，更新session
//		request.setAttribute("SuspectInfor", SuspectInfor);
		return "loadInfor";
	}

}
