package com.manageplantfrom.action;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import com.alibaba.fastjson.JSON;
import com.manageplantfrom.dao.BandInforDao;
import com.manageplantfrom.dao.RoomInforDao;
import com.manageplantfrom.daoImple.BandInforDaoImple;
import com.manageplantfrom.daoImple.RoomInforDaoImple;
import com.manageplantfrom.entity.PHCSMP_Suspect;
import com.manageplantfrom.service.SuspectService;
import com.manageplantfrom.serviceImple.SuspectServiceImple;
import com.manageplantfrom.utils.HttpRequest;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 树莓派与web服务器的接口
 * @author wuhaifei
 * @d2016年9月7日
 */
public class RFID_ReadAction extends ActionSupport implements ServletRequestAware,
ServletResponseAware,ServletContextAware {
	
	protected HttpServletRequest request;
	private static Date startTime = new Date(2015,12,01);
	protected HttpServletResponse response;
	protected ServletContext application;
	private static String oldDeviceId = null;
	public static boolean isEmpty = true;//初始时房间为空
    public static boolean isRecording=false;//是否处于录像状态，初始状态为否
	private int roomId = 0;
	private int bandId = 0;//手环id
	private String identificationCard = "wuhaifei1230343";
	SuspectService suspectService = new SuspectServiceImple();
	
	public void readRFID() throws IOException{
	
		RoomInforDao roomInfor = new RoomInforDaoImple();//查询房间号的dao
		BandInforDao bandInforDao = new BandInforDaoImple();
		
		String deviceId = request.getParameter("deviceId");//设备号
        String wristId = request.getParameter("wristId");//手环id
        String txID = request.getParameter("txID");//天线id
        
        Map<String, String> map = new HashMap<String, String>();
        map.put("policeId", deviceId);
        map.put("identificationCard", "wuhaifei1230343");
        
        Map<String,Object> map1 =  new HashMap<String, Object>();
        Map<String,String> map2 =  new HashMap<String, String>();
        map1.put("enableMp", "0");
        map1.put("showMpMode", "0");
        
        map2.put("expandMode", "0");
	        
        if(RFID_ReadAction.isEmpty == true){//如果房间为空
        	RFID_ReadAction.isEmpty = false;
        	//查找房间号
        	roomId =  roomInfor.findRoomIDByDeviceId(deviceId);
        	//查找手环id
        	bandId = bandInforDao.findBandIdByWristId(wristId);
        	//将房间的编号放入的session域中
        	oldDeviceId = deviceId;
        	if(roomId==1){//如果房间号为1，则……
        		//更新嫌疑人所在的房间
        		suspectService.updateSuspectInforByBandId(bandId,roomId);
        		
        		map2.put("input", "4.1");
        		map1.put("subPicInfo", map2);
        		String json2 = JSON.toJSONString(map1);
    	        json2  =json2.substring(0,31)+"["+json2.substring(31,63)+"]"+json2.substring(63,79);
    	        //激活第一个摄像头
    	        String str1 = HttpRequest.sendOkMCVPost("http://192.168.1.96:8765/SxSetSplitType.psp",json2);
    	        System.out.println("激活第一个摄像头"+str1);
    	        response.getWriter().write("first room:"+str1);
    	        //获取身份证号
    	        System.out.println("身份证号："+identificationCard);
    	        if(identificationCard != null){//开始录制视频
    	        	System.out.println(identificationCard);
    	        	//将身份号放入map中
    	        	map.put("identificationCard", identificationCard);
	    	        String json = JSON.toJSONString(map);
	    	        str1 = HttpRequest.sendOkMCVPost("http://192.168.1.96:8765/SxStartRecording.psp",json);
	    	        response.getWriter().write("start record:"+str1);
	    	    	System.out.println("开始录像："+str1);
	                isRecording=true;
                }
        	}
        }else{
        	if(wristId.equals("FFFFFFFF")&&roomId == 4){
        		//发停止录像指令
        		String str = HttpRequest.sendOkMCVPost("http://192.168.1.96:8765/SxStopRecording.psp", null);
        		System.out.println("发停止录像指令："+str);
        		RFID_ReadAction.isEmpty = true;//释放房间
        		return;
        	}
	        if(!oldDeviceId.equals(deviceId)){//如果设备号发生改变
	        	RFID_ReadAction.oldDeviceId = deviceId;//更新设备号
	        	//根据设备id查找房间id，然后根据房间id，向录播设备发送信息开启
	        	roomId =  roomInfor.findRoomIDByDeviceId(deviceId);
	        	//将房间的编号放入的session域中
	        	request.getSession().setAttribute("roomId", roomId);
	        	//将手环id放入session域中
	        	request.getSession().setAttribute("wristId", wristId);
	        	//相应房间的设备开始录像
                isRecording=true;
	        	if(roomId==2){
	        		//更新嫌疑人所在的房间
	        		suspectService.updateSuspectInforByBandId(bandId,roomId);
	        		map2.put("input", "4.2");
	        		map1.put("subPicInfo", map2);
	        		String json2 = JSON.toJSONString(map1);
	    	        json2  =json2.substring(0,31)+"["+json2.substring(31,63)+"]"+json2.substring(63,79);
	    	        String str1 = HttpRequest.sendOkMCVPost("http://192.168.1.96:8765/SxSetSplitType.psp",json2);
	    	    	System.out.println("第二个房间开始录像："+str1);
	        	}else if(roomId==3){
	        		//更新嫌疑人所在的房间
	        		suspectService.updateSuspectInforByBandId(bandId,roomId);
	        		
	        		map2.put("input", "4.3");
	        		map1.put("subPicInfo", map2);
	        		String json2 = JSON.toJSONString(map1);
	    	        json2  =json2.substring(0,31)+"["+json2.substring(31,63)+"]"+json2.substring(63,79);
	    	        String str1 = HttpRequest.sendOkMCVPost("http://192.168.1.96:8765/SxSetSplitType.psp",json2);
	    	    	System.out.println("第三个房间开始录像："+str1);
	        	}else if(roomId==4){
	        		//更新嫌疑人所在的房间
	        		suspectService.updateSuspectInforByBandId(bandId,roomId);
	        		map2.put("input", "4.2");
	        		map1.put("subPicInfo", map2);
	        		String json2 = JSON.toJSONString(map1);
	    	        json2  =json2.substring(0,31)+"["+json2.substring(31,63)+"]"+json2.substring(63,79);
	    	        String str1 = HttpRequest.sendOkMCVPost("http://192.168.1.96:8765/SxSetSplitType.psp",json2);
	    	    	System.out.println("第四个房间开始录像："+str1);
	        	}
        }else{
        //设备号未发生变化，说明还在同一房间进行了刷卡。
        //则有两种情况：1：处于正在录像状态，需发送暂停录像指令；2：处于暂停录像状态，需发重新开始录像指令
        if(isRecording==true){
        	isRecording=false;
        	//发送暂停录像指令
        	String str1 = HttpRequest.sendOkMCVPost("http://192.168.1.96:8765/SxPauseRecording.psp",null);
        	//打印返回的状态码
        	System.out.println("暂停录像:"+str1);
        }
        else{
	        //发送重新开始录像指令
	        isRecording=true;
	        String str1 = HttpRequest.sendOkMCVPost("http://192.168.1.96:8765/SxRestartRecording.psp",null);
	    	//打印返回的状态码
	    	System.out.println("重新开始录像:"+str1);
        }
    }
    }
	}

	@Override
	public void setServletContext(ServletContext application) {
		this.application = application;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}
