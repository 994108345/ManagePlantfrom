package com.manageplantfrom.action;

import com.manageplantfrom.base.BaseAction;
import com.manageplantfrom.entity.PHCSMP_BelongingS;
import com.manageplantfrom.entity.PHCSMP_Suspect;
import com.manageplantfrom.service.BelongingInforService;
import com.manageplantfrom.service.SuspectService;
import com.manageplantfrom.serviceImple.BelongingInforServiceImple;
import com.manageplantfrom.serviceImple.SuspectServiceImple;

public class PHCSMP_BelongingS_Action extends BaseAction<PHCSMP_BelongingS> {
	
	public String addBelongingInfor(){
//		System.out.println("wuhaifei,addBelongingInfor");
		
		BelongingInforService service = new BelongingInforServiceImple();
		service.saveBelongingInfor(model);
		
		return "addBelongingInfor";
	}
	
	public String loadInfor(){
//		SuspectService suspectService = new SuspectServiceImple();
//		PHCSMP_Suspect SuspectInfor = suspectService.findInfroByActiveCode(2);
//		System.out.println("name："+SuspectInfor.getSuspect_Name());
//		//将信息从数据库查找到之后，存入session，更新session
//		request.setAttribute("SuspectInfor", SuspectInfor);
		System.out.println("PHCSMP_BelongingS_Action：loadInfor");
		return "loadInfor";
	}
	
	
}
