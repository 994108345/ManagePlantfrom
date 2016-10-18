package com.manageplantfrom.action;


import com.manageplantfrom.base.BaseAction;
import com.manageplantfrom.entity.PHCSMP_Personal_Check;
import com.manageplantfrom.entity.PHCSMP_Suspect;
import com.manageplantfrom.service.PersonalCheckService;
import com.manageplantfrom.service.SuspectService;
import com.manageplantfrom.serviceImple.PersonalCheckServiceImple;
import com.manageplantfrom.serviceImple.SuspectServiceImple;
import com.manageplantfrom.utils.CompleteCheck;

/**
 * 人身检查记录信息
 * @author wuhaifei
 * @d2016年8月14日
 */
public class PHCSMP_Personal_Check_Action extends BaseAction<PHCSMP_Personal_Check> {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private PersonalCheckService service = new PersonalCheckServiceImple();
	
	/**
	 * 添加用户人身检查信息
	 * @return
	 * @throws Exception
	 */
	public String addCheckPersonInfor() throws Exception{
		
		/*通过反射加载类的信息*/
		Class<?> c = Class.forName(PHCSMP_Personal_Check.class.getName());
		
		int count = CompleteCheck.IsEqualsNull(model, c);
		int fieldsNumber = CompleteCheck.getFieldsNumber(model, c);
		
		model.setFill_record(fieldsNumber-count-3);//设置已填写的字段数
		model.setTotal_record(fieldsNumber-3);//设置应填写的字段
		System.out.println("未填写的字段："+count);
		System.out.println("总字段："+fieldsNumber);
		
		System.out.println("addCheckPersonInfor");
		service.saveCheckPersonInfor(model);
		return "addCheckPersonInfor";
	}
	
	/**
	 * 加载上一个房间的嫌疑人的信息
	 * @return
	 */
	public String loadInfor(){
		System.out.println("loadInfor");
//		SuspectService suspectService = new SuspectServiceImple();
//		int roomId = 1;
//		System.out.println("wuhaifei");
//		PHCSMP_Suspect SuspectInfor =  suspectService.findInfroByActiveCode(roomId);
//		//将信息从数据库查找到之后，存入session
//		request.setAttribute("SuspectInfor", SuspectInfor);
		
		return "loadInfor";
	}
}
