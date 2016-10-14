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
		form{margin: 2% 15%;}
		table{width: 100%; margin-bottom: 15px;}
		table td{font-size: 12x;line-height:50px; height:50px; text-align: center;}
		.title{margin-top: 2%;text-align: center;font-weight: bold;font-size: 24px;}
		.bigtouxiang{width: 140px; height: 211px;border: 1px solid red; margin: 2% auto;}
		.touxiang{width: 70px; height: 106px;border: 1px solid red; margin: 0 auto;}
		.t input{border:0;background:seashell;outline: medium;width: 90%;text-indent: 5px;height: 70%;}
		.checkbox{padding: 5px;}
		.checkbox input{display: inline-block; margin-left: 2%;}
		.btn{background-color: #1fbba6; width:122px;height: 37px;float: right;text-align: center;font-size: 16px;margin:2%;line-height: 37px;border-radius: 5px;color: #FFF;}
		.add,.remove{float: left;width: 112px;height: 27px;font-size: 16px;line-height: 27px;}
	</style>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/progress-bar.css" type="text/css">
<script type="text/javascript">
window.onload=function(){ 
	var oDiv = document.getElementsByTagName('div')[0];
	var oSpan = document.getElementsByTagName('span')[0];
	var oP = document.getElementsByTagName('p')[0];
	var num=10;
	var time = 0;
	var timer = null;
	timer = setInterval(function(){

		if(num < 60){ 
			oSpan.style.width = oSpan.offsetWidth + 5 + 'px';
			num = num + 1; 
			oP.innerHTML = num -10+ '%';
		}else{ 
			clearInterval(timer);
		}
	},time);
}
</script>
	
</head>
<body>
    <!-- 包含页面 -->
	<c:if test="${users.real_Name==null}">
		<c:import url="../home/top.jsp"></c:import> 	
		<br><br>
		<br><br>
	</c:if>
	<div class="title">
		   	随身物品检查记录
	</div>
	<form action="belonging_addBelongingInfor.action" method="post" id="Form" class="Form">
	<table  class="t" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		  <tr>
		    <td width="15%" rowspan="4"><div class="bigtouxiang"><img src="${pageContext.request.contextPath }/images/ercun.png"></div></td>
		    <td width="12%" rowspan="4"><div class="touxiang"><img src="${pageContext.request.contextPath }/images/yicun.png"></div></td>
		    <td width="10%" height="10">姓名</td>
		    <td width="20%"><input type="text" value="${SuspectInfor.suspect_Name }" ></input></td>    
		  </tr>
		  <tr>
		  	<td width="10%" >性别</td>
		    <td width="1%"><input type="text" name="" value="${SuspectInfor.sex}" ></input></td>
		  </tr>
		  <tr>
		  	<td width="10%" >档案编号</td>
		    <td width="1%"><input type="text" name="" value="${SuspectInfor.suspect_ID }" ></input></td>
		  </tr>
		  <tr>
		  	<td width="10%" >身份证号</td>
		    <td width="1%"><input type="text" name="" value="${SuspectInfor.identifyCard_Number }" ></input></td>
		  </tr>
		  <tr>
		    <td>身份类型</td>
		    <td><input type="text" name="" /></td>
		    <td>房间号</td>
		    <td><input type="text" name="Room_ID" /></td>
		    
		  </tr>
		  <tr>
		    <td>物品名称</td>
		    <td><input type="text" name="Belonging_Name" /></td>
		    <td>物品特征</td>
		    <td><input type="text" name="Belonging_Character" /></td>
		  </tr>
		  <tr>
		    <td>物品编号</td>
		    <td><input type="text" name="Belonging_Number" /></td>
		    <td>数量</td>
		    <td><input type="text" name="Belonging_Count" /></td>
		   </tr>
		   <tr>
		    <td>单位</td>
		    <td><input type="text" name="Belonging_Unit" /></td>
		    <td>保管措施</td>
		    <td>
		    	<select name="Keeping_ID">
					<option value="">-----请选择-----</option>
					<option value="">扣押</option>
					<option value="">暂存</option>
					<option value="">代保管</option>
				</select>	
		  	</td>
		   </tr>
		   <tr>
		    <td>进入办案区原由</td>
		    <td><input type="text" name="" value="${SuspectInfor.suspected_Cause }" placeholder="投案自首   治安传唤" readonly="true" /></td>
		    <td>保管柜号</td>
		    <td><input type="text" name="Cabinet_Number" /></td>
		  </tr>
		  <tr>
		    <td>办案人员</td>
		    <td ><input type="text" name=""  value="${users.real_Name}"/></td>
		    <td >物品保管员</td>
		    <td><input type="text" name="" value="${users.real_Name}"></td>
		  </tr>
		</table>
		<input type="submit" class="btn" value="提交"/>
	</form>
</body>
</html>