package com.manageplantfrom.action;

import com.manageplantfrom.base.BaseAction;
import com.manageplantfrom.entity.PHCSMP_BelongingS;
import com.manageplantfrom.entity.PHCSMP_Leave_Record;
import com.manageplantfrom.service.LeaveRecodService;
import com.manageplantfrom.serviceImple.LeaveRecodServiceImple;
import com.manageplantfrom.utils.CompleteCheck;

/**
 * 离开办案区的action
 * @author wuhaifei
 * @d2016年8月17日
 */
public class Leave_Recod_Action extends BaseAction<PHCSMP_Leave_Record> {
	/**
	 * 序列化的字段
	 */
	private static final long serialVersionUID = 1L;
	
	private LeaveRecodService service = new LeaveRecodServiceImple();
	
	/**
	 * 点击画面中的“下一步”，提交信息并转发到suspectManage_suspectInforSummary.action
	 * @return
	 * @throws Exception
	 */
	public String addLeaveRecordInfor() throws Exception{
		
		//通过反射加载离开办案区记录的类
		Class<?> c = Class.forName(PHCSMP_Leave_Record.class.getName());
		
		int count = CompleteCheck.IsEqualsNull(model, c);
		int fieldsNumber = CompleteCheck.getFieldsNumber(model, c);
		
		model.setFill_record(fieldsNumber-count-4);//设置已填写的字段数
		model.setTotal_record(fieldsNumber-4);//设置应填写的字段
		System.out.println("未填写的字段："+count);
		System.out.println("总字段："+fieldsNumber);
		
//		LeaveRecodService service = new LeaveRecodServiceImple();
//		service.saveLeaveRecordInfor(model);
		System.out.println("Leave_Recod_Action:addLeaveRecordInfor");
		return "addLeaveRecordInfor";
	}
	/*加载界面信息*/
	public String loadInfor(){
		System.out.println("Leave_Recod_Action:loadInfor");
		return "loadInfor";
	}
}


