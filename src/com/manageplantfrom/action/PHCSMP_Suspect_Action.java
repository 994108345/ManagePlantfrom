package com.manageplantfrom.action;

import java.util.List;

import com.manageplantfrom.base.BaseAction;
import com.manageplantfrom.entity.PHCSMP_Activity_Record;
import com.manageplantfrom.entity.PHCSMP_Band;
import com.manageplantfrom.entity.PHCSMP_Staff;
import com.manageplantfrom.entity.PHCSMP_Suspect;
import com.manageplantfrom.service.SuspectService;
import com.manageplantfrom.serviceImple.SuspectServiceImple;
import com.manageplantfrom.utils.CompleteCheck;

public class PHCSMP_Suspect_Action extends BaseAction<PHCSMP_Suspect> {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5503195229207984964L;
	
	private SuspectService service = new SuspectServiceImple();
	
	/*检查用户登录信息*/
	public String checkUser(){
		PHCSMP_Staff user =  (PHCSMP_Staff) request.getSession().getAttribute("user");
		
		if(user!=null){
			return "checkUser";
		}else{
			return "loginError";
		}
	}
	//添加嫌疑人信息
	public String addSuspectInfor() throws Exception{
		//设置激活码为房间号
//		model.setIs_Active((Integer)request.getSession().getAttribute("roomId"));
		
//		Class<?> c = Class.forName(PHCSMP_Suspect.class.getName());
//		int count = CompleteCheck.IsEqualsNull(model, c);
//		
//		System.out.println("统计字段："+count);
		/*第一个添加嫌疑人的信息直接设置已填写的字段即可*/
//		model.setFill_record(count);
		/*将录入的身份证号存入session中*/
//		service.saveSuspectInfor(model);
//		System.out.println(model.getSuspect_Name());
		System.out.println("PHCSMP_Suspect_Action:addSuspectInfor"+model);
		return "addSuspectInfor";
	}
	//加载数据库的手环id信息
	public String loadInfor(){
		List<PHCSMP_Band> list = service.findAllBundInfor();
		request.setAttribute("bundList",list);
		
		for(PHCSMP_Band l : list){//打印所有的手环信息
			l.toString();
			System.out.println(l.toString());
		}
		return "loadInfor";
	}
}
