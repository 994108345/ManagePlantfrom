package com.manageplantfrom.action;

import com.manageplantfrom.base.BaseAction;
import com.manageplantfrom.entity.PHCSMP_BelongingS;
import com.manageplantfrom.entity.PHCSMP_Information_Collection;
import com.manageplantfrom.entity.PHCSMP_Suspect;
import com.manageplantfrom.service.InformationCollectionService;
import com.manageplantfrom.service.SuspectService;
import com.manageplantfrom.serviceImple.InformationCollectionServiceImple;
import com.manageplantfrom.serviceImple.SuspectServiceImple;
import com.manageplantfrom.utils.CompleteCheck;
/**
 * 信息采集的action
 * @author wuhaifei
 * @d2016年8月14日
 */
public class Information_Collection_Action extends BaseAction<PHCSMP_Information_Collection> {
	private InformationCollectionService service = new InformationCollectionServiceImple();
	private SuspectService suspectService = new SuspectServiceImple();
	//保存信息
	public String addInformationCollection() throws Exception{
		//通过反射加载身物品检查记录的类
		Class<?> c = Class.forName(PHCSMP_Information_Collection.class.getName());
		
		int count = CompleteCheck.IsEqualsNull(model, c);
		int fieldsNumber = CompleteCheck.getFieldsNumber(model, c);
		
		model.setFill_record(fieldsNumber-count-3);//设置已填写的字段数
		model.setTotal_record(fieldsNumber-3);//设置应填写的字段
		System.out.println("未填写的字段："+count);
		System.out.println("总字段："+(fieldsNumber-3));
		System.out.println("房间号："+model.getRoom_ID());
//		InformationCollectionService service = new InformationCollectionServiceImple();
		service.saveCollectionInfor(model);
		
		return "addInformationCollection";
	}
	
	//加载信息，
	public String loadInfor(){
//		SuspectService suspectService = new SuspectServiceImple();
////		System.out.println("wuhaifei");
//		PHCSMP_Suspect SuspectInfor =  suspectService.findInfroByActiveCode(4);
////		//将信息从数据库查找到之后，存入session，更新session
//		request.setAttribute("SuspectInfor", SuspectInfor);
		System.out.println("Information_Collection_Action:loadInfor");
		return "loadInfor";
	}

}
