package com.manageplantfrom.action;

import com.manageplantfrom.base.BaseAction;
import com.manageplantfrom.entity.PHCSMP_Activity_Record;
import com.manageplantfrom.entity.PHCSMP_Information_Collection;
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
	
	//活动记录实例类
	private ActivityRecordService service = new ActivityRecordServiceImple();
	//嫌疑人信息
	private SuspectService suspectService = new SuspectServiceImple();
	/**
	 * 添加活动记录信息
	 * @return
	 * @throws Exception
	 */
	public String addActivityRecordInfor() throws Exception{
		
		//通过反射加载身物品检查记录的类
		Class<?> c = Class.forName(PHCSMP_Activity_Record.class.getName());
		//统计未填写的字段
		int count = CompleteCheck.IsEqualsNull(model, c);
		//统计所有的字段
		int fieldsNumber = CompleteCheck.getFieldsNumber(model, c);
		
		model.setFill_record(fieldsNumber-count-3);//设置已填写的字段数
		model.setTotal_record(fieldsNumber-3);//设置应填写的字段
		System.out.println("未填写的字段："+count);
		System.out.println("总字段："+(fieldsNumber-3));
		
//		ActivityRecordService service = new ActivityRecordServiceImple();
		//保存活动记录信息
//		service.saveActivityRecordInfor(model);
		
		System.out.println("Activity_Record_Action:addActivityRecordInfor");
		return "addActivityRecordInfor";
	}
	
	/**
	 * 加载活动记录信息
	 * @return
	 */
	public String loadInfor(){
//		
//		SuspectService suspectService = new SuspectServiceImple();
//		System.out.println("wuhaifei");
//		PHCSMP_Suspect SuspectInfor =  suspectService.findInfroByActiveCode(5);
////		//将信息从数据库查找到之后，存入session，更新session
//		request.setAttribute("SuspectInfor", SuspectInfor);
		System.out.println("Activity_Record_Action:loadInfor");
		return "loadInfor";
	}

}
