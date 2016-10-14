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
	 <div class="title">
		  显示全部信息
	</div>
	<div class="enter">
		<div class="info_head">进入办案区信息</div>
		<form>
			<table  class="" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
			  <tr >
			    <td width="15%" rowspan="4" height="10"><div class="bigtouxiang"></div></td>
			    <td width="2%" rowspan="4" height="10"><div class="touxiang"></div></td>
			    <td width="8%" height="10">姓名</td>
			    <td width="20%" height="10"><input type="text" name="demo" ></input></td>    
			  </tr>
			  <tr>
			  	<td width="10%" height="10">性别</td>
			    <td width="1%"><input type="text" name="" ></input></td>
			  </tr>
			  <tr>
			  	<td width="10%" height="10">档案编号</td>
			    <td width="1%"><input type="text" name="" ></input></td>
			  </tr>
			  <tr>
			  	<td width="10%" height="10">身份证号</td>
			    <td width="1%"><input type="text" name="" ></input></td>
			  </tr>
			  <tr>
			  	<td>民族</td>
			    <td><input type="text" name="" ></input></td>
			    <td>出生日期</td>
			    <td><input type="text" name="" ></input></td>
			  </tr>
			  <tr>
			    <td height="29">身份证件类型</td>
			    <td><input type="text" name="" ></input></td>
			     <td height="29">手环ID</td>
			    <td>
			    	<select>
						<option>-----请选择-----</option>
						<option>扣押</option>
						<option>暂存</option>
						<option>代保管</option>
					</select>	
			    </td>
			  </tr>
			  
			  <tr>
			    <td height="170">进入办案区原由</td>
			    <td colspan="7" style="line-height: 25px;">
			    	<span class="span1">案由：<input type="text" name="" style="width:50%;border-bottom: solid 1px #000;"></input></span>
			    	<div class="checkbox">
			    		<input type="checkbox" name="" value=""> 投案自首
			    		<input type="checkbox" name="" value=""> 治安传唤
			    		<input type="checkbox" name="" value=""> 形式传唤
			    		<input type="checkbox" name="" value=""> 拘传     <br/>
			    		<input type="checkbox" name="" value=""> 刑事拘留
			    		<input type="checkbox" name="" value=""> 取保候审
			    		<input type="checkbox" name="" value=""> 监视居住
			    		<input type="checkbox" name="" value=""> 逮捕	  <br/>
			    		<input type="checkbox" name="" value=""> 被害人
			    		<input type="checkbox" name="" value=""> 证人
			    		<input type="checkbox" name="" value=""> 辨认陪衬人员
			    	</div>
			    	<span class="span2">办案民警签名：<input type="text" name="" style="width:45%;border-bottom: solid 1px #000;"></input></span>
		    	</td>
			  </tr>
			  <tr>
			    <td>进入办案区时间</td>
			    <td colspan="3">
			    	<input placeholder="请输入年月日时分" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
		    	</td>
		    </tr>
		    <tr>
			    <td>管理员签名</td>
			    <td colspan="3"><input type="text" name="" ></input></td>
			  </tr>
			</table>
		</form>
	</div>
	<div class="check_person">
		<div class="info_head">人身检查记录</div>
		<form>
		<table  class="" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		   
		  	<td colspan="4" style="line-height: 25px;">
		    	<span class="span1">自述症状：(既往病史、是否饮酒、是否患有传染性疾病)
				<textarea name="" cols="100%" rows="8%" id="" style="border: 1 solid #888888;LINE-HEIGHT:18px;padding: 3px;"></textarea>
		    	</span>
		    </td>
		  </tr>
		  <tr>
		  	<td colspan="4" style="line-height: 15px;">
		  		<span class="span1">检查情况概述：<input type="text" name="" style="width:45%;border-bottom: solid 1px #000;"/></span>
		  	</td>
		  </tr>
		  <tr>
		  	<td colspan="4" style="line-height: 25px;">
		  		<span class="span1">具体检查情况：
				<div class="checkbox">
			    	<input type="checkbox" name="" value=""> 体表有伤痕
		    		<input type="checkbox" name="" value=""> 有饮酒
		    		<input type="checkbox" name="" value=""> 有拍照		<br/>
		    	</div>
		    	</span>
		    </td>
		  </tr>
		  <tr>
		  	<td>房间号</td>
		    <td><input type="text" name="" /></td>
		    <td>进入办案区的原由</td>
		  	<td ><input type="text" name="" disabled="true" placeholder="投案自首   治安传唤"/></td>
		  </tr>
		  <tr>
		    <td >检查民警签字</td>
		    <td colspan="3"><input type="text" name="" /></td>    	
		  </tr>	 
		</table>
	</form>
	</div>
	<div class="check_money">
		<div class="info_head">随身物品检查记录</div>
		<form id="Form" class="Form">
		<table  class="t" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		  <tr>
		    <td>物品名称</td>
		    <td><input type="text" name="" /></td>
		    <td>物品特征</td>
		    <td><input type="text" name="" /></td>
		  </tr>
		  <tr>
		    <td>编号</td>
		    <td><input type="text" name="" /></td>
		    <td>数量</td>
		    <td><input type="text" name="" /></td>
		   </tr>
		   <tr>
		    <td>单位</td>
		    <td><input type="text" name="" /></td>
		    <td>保管措施</td>
		    <td>
		    	<select>
					<option>-----请选择-----</option>
					<option>扣押</option>
					<option>暂存</option>
					<option>代保管</option>
				</select>	
		  	</td>
		   </tr>
		   <tr>
		    <td>进入办案区原由</td>
		    <td><input type="text" name="" placeholder="投案自首   治安传唤" readonly="true" /></td>
		    <td>保管柜号</td>
		    <td><input type="text" name="" /></td>
		  </tr>
		  <tr>
		    <td>办案人员签字</td>
		    <td ><input type="text" name="" /></td>
		    <td >物品保管员签字</td>
		    <td><input type="text" name=""></td>
		  </tr>
		</table>
		</form>
	</div>
	<div class="collect_info">
		<div class="info_head">信息采集记录</div>
		<form>
		<table  class="" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		  <tr>
		    <td width="10%" style="text-align: center;">信息采集</td>
		    <td width="10%" style="text-align: center;">
		    	<input type="radio" name="sure" value="radio"  />是
		    	<input type="radio" name="sure" value="radio"/>否
		    </td>
		    <td width="10%" style="text-align: center;">采集项目</td>
		    <td width="10%" style="text-align: center;">
		    	<input type="radio" name="sure" value="radio"  />是
		    	<input type="radio" name="sure" value="radio"/>否
		    </td>   
		  </tr>
		  <tr>
		    <td width="10%" style="text-align: center;">信息入库</td>
		    <td width="10%" style="text-align: center;">
		    	<input type="radio" name="sure" value="radio"  />是 
		    	<input type="radio" name="sure" value="radio"/>否
		    </td>
		    <td  style="text-align: center;">采集项目</td>
		    <td  >
		    	<select style="margin-left:38%;vertical-align:middle;">
					<option>-----请选择-----</option>
					<option>扣押</option>
					<option>暂存</option>
					<option>代保管</option>
				</select>	
		    </td>
		 </tr>
		 <tr>
		   <td  colspan="2" style="text-align: center;">进入办案区原由</td>
		   <td colspan="2"><input type="text" name="" disabled="true" placeholder="投案自首   治安传唤"/></td>
		  </tr>
		</table>
	</div>
	<div class="record_act">
		<div class="info_head">询问、讯问、辨认、等候、休息、饮食等活动记录</div>
		<form id="Form" class="Form">
		<table  class="t" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		  	<td>房间号</td>
		    <td><input type="text" name="" /></td>
		    <td>进入办案区原由</td>
		    <td>
				<input type="text" readonly="readonly" name="" placeholder="投案自首   治安传唤"/>
		    </td>
		  </tr>
		  <tr>
		    <td  style="text-align: center;">开始时间</td>
		    <td>
		  	<input placeholder="请输入开始时间" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
		    <td width="15%" style="text-align: center;">结束时间</td>
		    <td>
		  	<input placeholder="请输入结束时间" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
		  	</td>
		  </tr>
		  <tr>
		    <td>备注</td>
		    <td><input type="text" name="" /></td>
		    <td>活动内容/讯问音视频编码</td>
		    <td ><input type="file" name="" ></input></td>
		   </tr>
		</table>
	</form>
	</div>
	<div class="leave">
		<div class="info_head">离开办案区</div>
		<table  class="" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		  <tr>
		    <td height="20">最终离开时间</td>
		    <td>
		    	<input placeholder="请输入年月日时分" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
		    </td>
		    <td>离开原因</td>
		    <td>
			    	<select>
						<option value="0">-----请选择-----</option>
						<option value="1">查证结束</option>
						<option value="2">刑拘</option>
						<option value="3">行政拘留</option>
						<option value="4">警告</option>
						<option value="5">罚款</option>
						<option value="6">教育</option>
						<option value="7">释放</option>
					</select>
		    </td>
		  </tr>
		  <tr>
		    <td height="170">随身物品处理情况</td>
		    <td colspan="3" style="text-align:left;line-height: 25px;text-indent: 10px;">
		    	<div class="info">
			    	<span class="span1">随身物品处理情况：</span>
		    		<input type="checkbox" name="" value="" style="margin-left: 15px;"> 全部返还
		    		<input type="checkbox" name="" value=""> 部分返还
		    		<input type="checkbox" name="" value=""> 未返还		<br/>
			    	<span class="span2">未返还物品情况记载：<input type="text" name="" style="width:45%;border-bottom: solid 1px #000;"></input></span>
			    	<span class="span2">领取人签名：<input type="text" name="" style="width:50%;border-bottom: solid 1px #000;"></input></span>
			    	<span class="span2">身份证号码：<input type="text" name="" style="width:50%;border-bottom: solid 1px #000;"></input>
			    		<input placeholder="请输入年月日时分" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"> 
			    	</span>
			    </div>
	    	</td>
		  </tr>
		  <tr>
		    <td >房间号</td>
		    <td >
		    	<input type="text" name="" />
	    	</td>
	    	
	    	<td >进入办案区原由</td>
		    <td>
				<input type="text" name="" disabled="true" placeholder="投案自首   治安传唤"/>
		    </td>
		   
		  </tr>
		  <tr>
		  	<td >管理员及办案部门负责人签名</td>
		    <td >
		    	<input type="text" name="" />
	    	</td> 
	    	<td >返回时间</td>
		    <td >
	 			<input type="text" name="" />
	    	</td>
		  </tr>
		</table>
	</div>
	<button class="btn" style="margin-left: 40%; margin-right:4%;">下载</button>
	<button class="btn">打印</button>
</body>
</html>