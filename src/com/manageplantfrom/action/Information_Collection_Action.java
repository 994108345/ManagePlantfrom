package com.manageplantfrom.action;

import com.manageplantfrom.base.BaseAction;
import com.manageplantfrom.entity.PHCSMP_Information_Collection;
import com.manageplantfrom.entity.PHCSMP_Suspect;
import com.manageplantfrom.service.InformationCollectionService;
import com.manageplantfrom.service.SuspectService;
import com.manageplantfrom.serviceImple.InformationCollectionServiceImple;
import com.manageplantfrom.serviceImple.SuspectServiceImple;
/**
 * 信息采集的action
 * @author wuhaifei
 * @d2016年8月14日
 */
public class Information_Collection_Action extends BaseAction<PHCSMP_Information_Collection> {
	//保存信息
	public String addInformationCollection(){
		InformationCollectionService service = new InformationCollectionServiceImple();
		service.saveCollectionInfor(model);
		return "addInformationCollection";
	}
	
	//加载信息，
	public String loadInfor(){
		SuspectService suspectService = new SuspectServiceImple();
//		System.out.println("wuhaifei");
		PHCSMP_Suspect SuspectInfor =  suspectService.findInfroByActiveCode(4);
//		//将信息从数据库查找到之后，存入session，更新session
		request.setAttribute("SuspectInfor", SuspectInfor);
		return "loadInfor";
	}

}
