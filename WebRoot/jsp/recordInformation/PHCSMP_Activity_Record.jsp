<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title></title>
	<style type="text/css">
		*{margin:0;padding:0;}
		form{margin: 2% 15% ;}
		table{width: 100%; margin-bottom: 15px;}
		table td{font-size: 12x;line-height: 50px;height: 50px;text-align:center;} 
		.title{margin-top: 2%;text-align: center;font-weight: bold;font-size: 24px;}
		.bigtouxiang{width: 140px; height: 211px;border: 1px solid red; margin: 4% auto;}
		.touxiang{width: 70px; height: 106px;border: 1px solid red; margin: 0 auto;}
		.t input{border:0;background:seashell;outline: medium;width: 90%;text-indent: 5px;height: 70%;}
		.checkbox{padding: 5px;}
		.checkbox input{display: inline-block; margin-left: 2%;}
		.btn{background-color: #1fbba6; width:122px;height: 37px;float: right;text-align: center;font-size: 16px;margin:2%;line-height: 37px;border-radius: 5px;color: #FFF;}
	</style>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/step-jquery-dc.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/laydate/laydate.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/laydate/change_color.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/progress-bar.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/step-dc-style2.css" type="text/css">
</head>
<body>
	<!-- 包含页面 -->
	<c:if test="${users.real_Name==null }">
		<c:import url="../home/top.jsp"></c:import> 	
		<br><br>
		<br><br>
	</c:if>
	<div class="title">
		   	询问、讯问、辨认、等候、休息、饮食等活动记录
	</div>
	<form action="${pageContext.request.contextPath }/AR_addActivityRecordInfor.action" method="post" id="AR_from">
		<table  class="t" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		<tr>
		    <td width="15%" rowspan="4"><div class="bigtouxiang"></div></td>
		    <td width="12%" rowspan="4"><div class="touxiang"></div></td>
		    <td width="10%">姓名</td>
		    <td width="17%"><input type="text" name="" value="${SuspectInfor.suspect_Name }" ></input></td>    
		  </tr>
		  <tr>
		  	<td width="10%" height="20">性别</td>
		    <td width="1%"><input type="text" name="" value="${SuspectInfor.sex}" ></input></td>
		  </tr>
		  <tr>
		  	<td width="10%" height="20">档案编号</td>
		    <td width="1%"><input type="text" name="" ></input></td>
		  </tr>
		  <tr>
		  	<td width="10%" height="20">身份证号</td>
		    <td width="1%"><input type="text" name="" value="${SuspectInfor.identifyCard_Number }" ></input></td>
		  </tr>
		  	<td style="text-align: center;">房间号</td>
		    <td><input type="text" name="" /></td>
		    <td  style="text-align: center;">进入办案区原由</td>
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
		    <td  style="text-align: center;">活动内容/讯问音视频编码</td>
		    <td ><input type="text" name="" ></input></td>
		    <td>备注</td>
		    <td><input type="text" name="" /></td>
		  </tr>
		  <tr>
		  <td colspan="4" style="line-height: 25px;">
		    	<span class="span1">自述症状：(既往病史、是否饮酒、是否患有传染性疾病)
				<textarea name="" cols="100%" rows="8%" id="" style="border: 1 solid #888888;LINE-HEIGHT:18px;padding: 3px;"></textarea>
		    	</span>
		    </td>
		  </tr>
		</table>
		<br/>
		<div class="step_context test">
			<ul>
			<li class="firstFinshStep"><span>1</span><a href="#" data-value="1" data-text="第一步">第一步</a></li>
			<li class="finshStep"><span>2</span><a href="#" data-value="2" data-text="第二步">第二步</a></li>
			<li class="finshStep"><span>3</span><a href="#" data-value="3" data-text="第三步">第三步</a></li>
			<li class="finshStep"><span>4</span><a href="#" data-value="4" data-text="第四步">第四步</a></li>
			<li class="coressStep"><span>5</span><a href="#" data-value="5" data-text="第五步">第五步</a></li>
			<li class="loadStep"><span>6</span><a href="#" data-value="6" data-text="第六步">第六步</a></li>
			<li class="last"><span>7</span><a href="#" data-value="7" data-text="第七步">第七步</a></li>
			</ul>
		</div>
		<input class="btn" type="submit" value="提交"/>
	</form>
	<script type="text/javascript">
	//所有步骤的数据
	var stepListJson=[{StepNum:1,StepText:"第一步"},
    {StepNum:2,StepText:"第二步"},
    {StepNum:3,StepText:"第三步"},
    {StepNum:4,StepText:"第四步"},
    {StepNum:5,StepText:"第五步"},
    {StepNum:6,StepText:"第六步"},
    {StepNum:7,StepText:"第七步"}];
	
	//当前进行到第几步
	var currentStep=5;
//new一个工具类
var StepTool = new Step_Tool_dc("test","mycall");
//使用工具对页面绘制相关流程步骤图形显示
StepTool.drawStep(currentStep,stepListJson);
//回调函数
function mycall(restult){
//	alert("mycall"+result.value+":"+result.text);
	StepTool.drawStep(result.value,stepListJson);
	//TODO...这里可以填充点击步骤的后加载相对应数据的代码
}
</script>
</body>
</html>