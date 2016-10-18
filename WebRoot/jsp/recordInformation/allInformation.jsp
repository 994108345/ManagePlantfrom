<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title></title>
	<style type="text/css">
		*{margin:0;padding:0;}
		.enter,.check_person,.check_money,.collect_info,.record_act,.leave{margin:2% 15%;}
		.info_head {font-size: 20px;background: #F0F5F7;
			color: #056dae; text-align: left; text-indent: 10px;padding-top: 5px;}
		table{width: 100%;}
		table td{font-size: 12x;line-height: 50px;height:50px;text-align: center;} 
		.label1{float: left;padding: 5px; }
		.label2{float: right;padding: 5px;margin-right: 1%;}
		.title{margin:2% auto 1%;text-align: center;font-weight: bold;font-size: 24px;}
   		.bigtouxiang{width: 140px; height: 211px;border: 1px solid red; margin: 2% auto;}
		.touxiang{width: 70px; height: 106px;border: 1px solid red; margin: 0 auto;}
		input{border:0;background:transparent;outline: medium;text-indent: 5px;}
		.span1{padding: 5px;margin-top: 1%;margin-bottom: 1%; display: block;}
		.span2{padding: 5px;margin-top: 1%; display: block;}
		.checkbox{padding: 5px;}
		.checkbox input{display: inline-block; margin-left: 3%;}
		.btn{background-color: #1fbba6; width:122px;height: 37px;text-align: center;font-size: 16px;
			line-height:37px; border-radius: 5px;color: #FFF;margin-bottom: 4%;}
	</style>
	<script src="style/laydate/laydate.js"></script> 
	<script src="style/laydate/change_color.js"></script> 
	<script type="text/javascript">
	$(document).ready(function(){  $("input[name=demo]").focus();});
	</script>
</head>
<body>
	 <div class="title">嫌疑人信息</div>
	 <!-- 进入办案区嫌疑人信息登记 -->
	<div class="enter">
		<div class="info_head">进入办案区信息</div>
		<form>
			<table  class="" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
			  <tr >
			    <td width="15%" rowspan="4" height="10"><div class="bigtouxiang"></div></td>
			    <td width="2%" rowspan="4" height="10"><div class="touxiang"></div></td>
			    <td width="8%" height="10">姓名</td>
			    <td width="20%" height="10"><input type="text" value="${suspect.suspect_Name }" ></input></td>    
			  </tr>
			  <tr>
			  	<td width="10%" height="10">性别</td>
			    <td width="1%"><input type="text" name="" value="${suspect.sex }" ></input></td>
			  </tr>
			  <tr>
			  	<td width="10%" height="10">档案编号</td>
			    <td width="1%"><input type="text" name="" value="${suspect.suspect_ID }" ></input></td>
			  </tr>
			  <tr>
			  	<td width="10%" height="10">身份证号</td>
			    <td width="1%"><input type="text" name="" value="${suspect.identifyCard_Number }" ></input></td>
			  </tr>
			  <tr>
			  	<td>民族</td>
			    <td><input type="text" name="" value=""></input></td>
			    <td>出生日期</td>
			    <td><input type="text" name="" value="${suspect.birthday }"></input></td>
			  </tr>
			  <tr>
			    <td height="29">身份证件类型</td>
			    <td><input type="text" name="" value="${suspect.type_ID }" ></input></td>
			     <td height="29">手环ID</td>
			    <td>
			    	<input type="" value="${suspect.band_ID }" />
			    </td>
			  </tr>
			  
			  <tr>
			    <td height="170">进入办案区原由</td>
			    <td colspan="7" style="line-height: 25px;">
			    	<span class="span1">案由：<input type="text" name="" value="${suspect.suspected_Cause }" style="width:50%;border-bottom: solid 1px #000;"></input></span>
		    	</td>
			  </tr>
			  <tr>
			    <td>进入办案区时间</td>
			    <td colspan="3">
			    	<input type="text" name="" value="${suspect.enter_Time }" />
		    	</td>
		    </tr>
		    <tr>
			    <td>办案民警</td>
			    <td colspan="3"><input type="text" name="" value="${suspect.staff_ID }"/></td>
			  </tr>
			</table>
		</form>
	</div>
	
	<!-- 人身检查记录 -->
	<div class="check_person">
		<div class="info_head">人身检查记录</div>
		<form>
		<table  class="" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		   
		  	<td colspan="4" style="line-height: 25px;">
		    	<span class="span1">自述症状：(既往病史、是否饮酒、是否患有传染性疾病)
				<textarea name="" cols="100%" rows="8%" id="" style="border: 1 solid #888888;LINE-HEIGHT:18px;padding: 3px;">
					${personal_Check.Self_ReportS }
				</textarea>
		    	</span>
		    </td>
		  </tr>
		  <tr>
		  	<td colspan="4" style="line-height: 15px;">
		  		<span class="span1">检查情况：<input type="text" name="" value="${personal_Check.Check_ReportS }" style="width:45%;border-bottom: solid 1px #000;"/></span>
		  	</td>
		  </tr>
		  <tr>
		  	<td colspan="4" style="line-height: 25px;">
		  		<span class="span1">人身检查状态：
		  		<input type="" name="" value="${personal_Check.Check_Situation }">
		    	</span>
		    </td>
		  </tr>
		  <tr>
		  	<td>房间号</td>
		    <td><input type="text" name="" value="${personal_Check.Room_ID }" /></td>
		    <td>检查民警</td>
		  	<td ><input type="text" name="" value="${personal_Check.Staff_ID }"/></td>
		  </tr>
		 <!--  <tr>
		    <td >检查民警签字</td>
		    <td colspan="3"><input type="text" name="" /></td>    	
		  </tr>	 --> 
		</table>
	</form>
	</div>
	<!-- 随身物品检查记录 -->
	<div class="check_money">
		<div class="info_head">随身物品检查记录</div>
		<form id="Form" class="Form">
		<table  class="t" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		  <tr>
		    <td>物品名称</td>
		    <td><input type="text" name="" value="${belongingS.Belonging_Name }"/></td>
		    <td>物品特征</td>
		    <td><input type="text" name="" value="${belongingS.Belonging_Character }"/></td>
		  </tr>
		  <tr>
		    <td>物品编号</td>
		    <td><input type="text" name="" value="${belongingS.Belonging_Number }"/></td>
		    <td>物品数量</td>
		    <td><input type="text" name="" value="${belongingS.Belonging_Count }" /></td>
		   </tr>
		   <tr>
		    <td>物品单位</td>
		    <td><input type="text" name="" value="${belongingS.Belonging_Unit }"/></td>
		    <td>保管措施</td>
		    <td><input type="text" name="" value="${belongingS.Keeping_ID }" /></td>
		   </tr>
		   <tr>
		    <td>房间号</td>
		    <td><input type="text" name="" value="${belongingS.Room_ID }"/></td>
		    <td>保管柜号</td>
		    <td><input type="text" name="${belongingS.Cabinet_Number }" /></td>
		  </tr>
		   <tr>
		    <td>办案民警</td>
		    <td><input type="text" name="" value="${belongingS.Staff_ID_Belonging }"/></td>
		    <td>财物管理民警</td>
		    <td><input type="text" name="${belongingS.Staff_ID }" /></td>
		  </tr>
		</table>
		</form>
	</div>
	
	<!-- 信息采集记录 -->
	
	<div class="collect_info">
		<div class="info_head">信息采集记录</div>
		<form>
		<table  class="" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		  <tr>
		    <td width="10%" style="text-align: center;">信息是否采集</td>
		    <td width="10%" style="text-align: center;">
		    	<input type="" name="" value="${information_Collection.Is_Collected }">
		    </td>
		    <td width="10%" style="text-align: center;">是否检查对比</td>
		    <td width="10%" style="text-align: center;">
		    	<input type="" name="" value="${information_Collection.Is_Checked }">
		    </td>   
		  </tr>
		  <tr>
		    <td width="10%" style="text-align: center;">信息是否入库</td>
		    <td width="10%" style="text-align: center;">
		    	<input type="" name="" value="${information_Collection.Is_Storaged }">
		    </td>
		    <td  style="text-align: center;">采集项目</td>
		    <td>
		    	<input type="" name="" value="${information_Collection.Collected_Item }">
		    </td>
		 </tr>
		</table>
	</div>
	
	<!-- 询问、讯问、辨认、等候、休息、饮食等活动记录 -->
	
	<div class="record_act">
		<div class="info_head">询问、讯问、辨认、等候、休息、饮食等活动记录</div>
		<form id="Form" class="Form">
		<table  class="t" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		  <tr>
		  	<td>房间号</td>
		    <td><input type="text" name="" value="${activity_Record.Room_ID }"/></td>
		    <td>讯问音视频编码</td>
		    <td ><input type="text" name="" value="${activity_Record.Vedio_Number }" ></input></td>
		  </tr>
		  <tr>
		    <td  style="text-align: center;">开始时间</td>
		    <td>
		  	<input type="" name="" value="${activity_Record.Start_Time }">
		    <td width="15%" style="text-align: center;">结束时间</td>
		    <td>
		  	<input type="" name="" value="${activity_Record.End_Time }">
		  	</td>
		  </tr>
		  <tr>
		    <td>活动内容</td>
		    <td><input type="text" name="" value="${activity_Record.Activity_Record }" /></td>
		    <td  style="text-align: center;">办案民警</td>
		    <td ><input type="" name="" value="${activity_Record.StaffS }"></input></td>
		  </tr>
		  <tr>
			  <td colspan="4" style="line-height: 25px;">
			    	<span class="span1">备注（具体备注信息，必填）
					<textarea name="Remark" cols="100%" rows="8%" id="" style="border: 1 solid #888888;LINE-HEIGHT:18px;padding: 3px;">
						${activity_Record.Remark }
					</textarea>
			    	</span>
			  </td>
		  </tr>
		</table>
	</form>
	</div>
	
	<!-- 离开办案区信息登记 -->
	
	<div class="leave">
		<div class="info_head">离开办案区</div>
		<table  class="" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		  <tr>
		    <td height="20">最终离开时间</td>
		    <td>
		    	<input type="" name="" value="${leave_Record.Leave_Time }">
		    </td>
		    <td>离开原因</td>
		    <td>
		    	<input type="" name="" value="${leave_Record.Leave_Reason }">
		    </td>
		  </tr>
		  
		  <tr>
		  	<td width="10%">临时离开时间</td>
		    <td width="1%"><input type="" name="" value="${leave_Record.TempLeave_Time }"></td>
		  	<td width="10%">临时离开原因</td>
		    <td width="1%"><input type="" name="" value="${leave_Record.TempLeave_Reason }"></input></td>
		  </tr>
		  <tr>
		  	<td width="10%">返回时间</td>
		    <td width="1%"><input type="" name="" value="${leave_Record.Return_Time }"></input></td>
		  	<td width="10%">物品处理时间</td>
		    <td width="1%"><input type="" name="" value="${leave_Record.Treatment_Time }"></input></td>
		  </tr>
		  <tr>
		    <td height="170">随身物品处理</td>
		    <td colspan="3" style="text-align:left;line-height: 25px;text-indent: 10px;">
		    	<div class="info">
			    	<span class="span1">随身物品处理方式：<input type="" name="" value="${leave_Record.BelongingS_Treatment_Method }"></span>
			    	<span class="span2">未返还物品记录：<input type="text" name="" value="${leave_Record.BelongingS_Treatment_Record }"></input></span>
			    	<span class="span2">领取人：<input type="text" name="" value="${leave_Record.Recipient_Person }"></input></span>
			    	<span class="span2">身份证号码：<input type="text" name="" value="${leave_Record.Recipient_Person_Number }"></input>
			    	</span>
			    </div>
	    	</td>
		  </tr>
		  <tr>
		    <td >房间号</td>
		    <td >
		    	<input type="text" name="" value="${leave_Record.Room_ID }" />
	    	</td>
	    	
	    	<td >办案民警</td>
		    <td >
		    	<input type="text" name="" value="${leave_Record.Staff_ID }" />
	    	</td> 
		  </tr>
		</table>
	</div>
	<button class="btn" style="margin-left: 40%; margin-right:4%;">下载</button>
	<button class="btn">打印</button>
</body>
</html>