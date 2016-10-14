package com.manageplantfrom.action;

import java.util.Enumeration;

import com.manageplantfrom.base.BaseAction;
import com.manageplantfrom.entity.PHCSMP_Personal_Check;
import com.manageplantfrom.entity.PHCSMP_Suspect;
import com.manageplantfrom.service.PersonalCheckService;
import com.manageplantfrom.service.SuspectService;
import com.manageplantfrom.serviceImple.PersonalCheckServiceImple;
import com.manageplantfrom.serviceImple.SuspectServiceImple;

/**
 * 人身检查记录信息
 * @author wuhaifei
 * @d2016年8月14日
 */
public class PHCSMP_Personal_Check_Action extends BaseAction<PHCSMP_Personal_Check> {
	
	PersonalCheckService service = new PersonalCheckServiceImple();
	
	public String addCheckPersonInfor(){
		
		service.saveCheckPersonInfor(model);
		System.out.println(model.getCheck_Situation());
		return "addCheckPersonInfor";
	}
	
	//加载上一个房间的嫌疑人的信息
	public String loadInfor(){
		SuspectService suspectService = new SuspectServiceImple();
		int roomId = 1;
		System.out.println("wuhaifei");
		PHCSMP_Suspect SuspectInfor =  suspectService.findInfroByActiveCode(roomId);
		//将信息从数据库查找到之后，存入session
		request.setAttribute("SuspectInfor", SuspectInfor);
		
		return "loadInfor";
	}
}
