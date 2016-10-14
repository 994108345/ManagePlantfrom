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
		form{margin:2% 15%;}
		table{width: 100%;}
		table td{font-size: 12x;line-height:50px; height:50px; text-align: center;} 
		.title{margin-bottom: 2%;text-align: center;font-weight: bold;font-size: 24px;}
		/*input{border:0;background:transparent;outline: medium;text-indent: 5px;}*/
		input{border:0;background:seashell;outline: medium;text-indent: 5px;width: initial;}
		.inputBox{border:0;background:seashell;outline: medium;text-indent: 5px;height: 45px;width: initial;}
		.bigtouxiang{width: 140px; height: 211px;border: 1px solid red; margin: 2% auto ;}
		.touxiang{width: 70px; height: 106px;border: 1px solid red; margin: 0 auto;}
		.info{margin-left: 3%;}
		.span1{padding: 5px;margin-top: 1%;margin-bottom: 1%; display: inline-block;}
		.span2{padding: 5px;margin-top: 1%; display: block;}
		.checkbox{padding: 5px;}
		.checkbox input{display: inline-block; margin-left: 3%;}
		.btn{background-color: #1fbba6; width:122px;height: 37px;float: right;text-align: center;font-size: 16px;margin:2%;line-height: 37px;border-radius: 5px;color: #FFF;}
	</style>
	<script src="${pageContext.request.contextPath }/js/laydate/laydate.js"></script> 
	<script src="${pageContext.request.contextPath }/js/laydate/change_color.js"></script> 
</head>
<body>
<!-- 包含页面 -->

	<c:if test="${users.real_Name==null }">
		<c:import url="../home/top.jsp"></c:import> 	
		<br><br>
		<br><br>
	</c:if>
	 <div class="title"> 离开办案区</div>
	<form action="LR_addLeaveRecordInfor.action" method="post">
		<table  class="" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		  <tr>
		    <td width="15%" rowspan="4"><div class="bigtouxiang"></div></td>
		    <td width="1%" rowspan="4"><div class="touxiang"></div></td>
		    <td width="10%">姓名</td>
		    <td width="20%"><input type="text" name="" value="${SuspectInfor.suspect_Name }" class="inputBox" ></input></td>    
		  </tr>
		  <tr>
		  	<td width="10%">性别</td>
		    <td width="1%"><input type="text" name="" value="${SuspectInfor.sex}" class="inputBox" ></input></td>
		  </tr>
		  <tr>
		  	<td width="10%">档案编号</td>
		    <td width="1%"><input type="text" name="" class="inputBox" ></input></td>
		  </tr>
		  <tr>
		  	<td width="10%">身份证号</td>
		    <td width="1%"><input type="text" name="" value="${SuspectInfor.identifyCard_Number }" class="inputBox"></input></td>
		  </tr>
		  <tr>
		    <td height="20">最终离开时间</td>
		    <td>
		    	<input placeholder="请输入年月日时分" class="laydate-icon" class="inputBox" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
		    </td>
		    <td>离开原因</td>
		    <td colspan="3">
		    	<select name="Leave_Reason">
					<option value="">-----请选择-----</option>
					<option value="查证结束">查证结束</option>
					<option value="刑拘">刑拘</option>
					<option value="行政拘留">行政拘留</option>
					<option value="警告">警告</option>
					<option value="罚款">罚款</option>
					<option value="教育">教育</option>
					<option value="释放">释放</option>
				</select>
		    </td>
		  </tr>
		  <tr>
		    <td height="170">随身物品处理情况</td>
		    <td colspan="3" style="text-align: left;line-height: 25px;">
		    	<div class="info">
			    	<span class="span1">随身物品处理情况：</span>
		    		<input type="checkbox" name="BelongingS_Treatment_Method" value="全部返还"> 全部返还
		    		<input type="checkbox" name="BelongingS_Treatment_Method" value="部分返还"> 部分返还
		    		<input type="checkbox" name="BelongingS_Treatment_Method" value="未返还"> 未返还		<br/>
			    	<span class="span2">未返还物品情况记载：<input type="text" name="BelongingS_Treatment_Record" class="inputBox" style="width:45%;border-bottom: solid 1px #000;"></input></span>
			    	<span class="span2">领取人签名：<input type="text" name="Recipient_Person" class="inputBox" style="width:50%;border-bottom: solid 1px #000;"></input></span>
			    	<span class="span2">领取人证件号码：<input type="text" name="Recipient_Person_Number" class="inputBox" style="width:50%;border-bottom: solid 1px #000;"></input>
			    	</span>
			    </div>
	    	</td>
		  </tr>
		  <tr>
		    <td >房间号</td>
		    <td >
		    	<input type="text" name="" class="inputBox" />
	    	</td>
	    	
	    	<td >进入办案区原由</td>
		    <td>
				<input type="text" name="" class="inputBox" disabled="true" placeholder="投案自首   治安传唤"/>
		    </td>
		   
		  </tr>
		  <tr>
		  	<td >管理员及办案部门负责人</td>
		    <td >
		    	<input type="text" name="" class="inputBox" />
	    	</td> 
	    	<td >返回时间</td>
		    <td >
	 			<input type="text" name="" class="inputBox" />
	    	</td>
		  </tr>
		</table>
		<input class="btn" type="submit" value="提交"/>
	</form>
</body>
</html>