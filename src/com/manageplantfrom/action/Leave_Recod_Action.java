package com.manageplantfrom.action;

import com.manageplantfrom.base.BaseAction;
import com.manageplantfrom.entity.PHCSMP_Leave_Record;
import com.manageplantfrom.service.LeaveRecodService;
import com.manageplantfrom.serviceImple.LeaveRecodServiceImple;

public class Leave_Recod_Action extends BaseAction<PHCSMP_Leave_Record> {
	
	public String addLeaveRecordInfor(){
//		System.out.println("wuhaifei,addLeaveRecordInfor");
		System.out.println("离开原因："+model.getLeave_Reason());
		System.out.println("随身物品处理情况："+model.getBelongingS_Treatment_Method());
		LeaveRecodService service = new LeaveRecodServiceImple();
		service.saveLeaveRecordInfor(model);
		return "addLeaveRecordInfor";
	}
	/*加载界面信息*/
	public String loadInfor(){
		return "loadInfor";
	}
}
