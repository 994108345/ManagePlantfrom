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
		table{width: 100%;}
		table td{font-size: 12x;line-height:50px; height:50px; text-align: center;} 
		.bigtouxiang{width: 140px; height: 211px;border: 1px solid red; margin: 2% auto;}
		.touxiang{width: 70px; height: 106px;border: 1px solid red; margin: 0 auto;}
		.title{margin-bottom: 10px;text-align: center;font-weight: bold;font-size: 24px;}
		/*input{border:0;background:transparent;outline: medium;text-indent: 5px;}*/
		input{border:0;background:seashell;outline: medium;text-indent: 5px;width: initial;}
		.inputBox{border:0;background:seashell;outline: medium;text-indent: 5px;height: 45px;width: initial;}
		.checkbox{padding: 5px;}
		.checkbox input{display: inline-block; margin-left: 3%; height: 0px;}
		.btn{background-color: #1fbba6; width:122px;height: 37px;float: right;text-align: center;font-size: 16px;margin:2%;line-height: 37px;border-radius: 5px;color: #FFF;}
	</style>
	
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
   <c:if test="${users.real_Name==null }">
		<c:import url="../home/top.jsp"></c:import> 	
		<br><br>
		<br><br>
	</c:if>  
	
	<form action="${pageContext.request.contextPath }/IC_addInformationCollection.action" method="post">
		<table  class="" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		  	
		   <div class="title">
		    信息采集
		  </div>
		  <tr>
		    <td width="15%" rowspan="4"><div class="bigtouxiang"></div></td>
		    <td width="12%" rowspan="4"><div class="touxiang"></div></td>
		    <td width="8%" height="10">姓名</td>
		    <td width="20%"><input type="text" name="" value="${SuspectInfor.suspect_Name }" class="inputBox" ></input></td>    
		  </tr>
		  <tr>
		  	<td width="10%">性别</td>
		    <td width="1%"><input type="text" name="" value="${SuspectInfor.sex}" class="inputBox" ></input></td>
		  </tr>
		  <tr>
		  	<td width="10%">档案编号</td>
		    <td width="1%"><input type="text" name=""  class="inputBox" ></input></td>
		  </tr>
		  <tr>
		  	<td width="10%">身份证号</td>
		    <td width="1%"><input type="text" name="" value="${SuspectInfor.identifyCard_Number }" class="inputBox" ></input></td>
		  </tr>
		   
		  <tr>
		    <td width="10%" style="text-align: center;">信息采集</td>
		    <td width="10%" style="text-align: center;">
		    	<input type="radio" name="Is_Collected" value="radio"  />是
		    	<input type="radio" name="Is_Collected" value="radio"/>否
		    </td>
		    <td width="10%" style="text-align: center;">采集项目</td>
		    <td width="10%" style="text-align: center;">
		    	<input type="radio" name="Is_Checked" value="radio"  />是
		    	<input type="radio" name="Is_Checked" value="radio"/>否
		    </td>
		    
		  </tr>
		  <tr>
		    <td width="10%" style="text-align: center;">信息入库</td>
		    <td width="10%" style="text-align: center;">
		    	<input type="radio" name="Is_Storaged" value="radio"  />是 
		    	<input type="radio" name="Is_Storaged" value="radio"/>否
		    </td>
		    <td  style="text-align: center;">采集项目</td>
		    <td  >
		    	<select name="Collected_Item" style="margin-left:38%;vertical-align:middle;">
					<option value="">-----请选择-----</option>
					<option value="扣押">扣押</option>
					<option value="暂存">暂存</option>
					<option value="代保管">代保管</option>
				</select>	
		    </td>
		 </tr>
		 <tr>
		 	<td style="text-align: center;">房间号</td>
		 	<td style="text-align: center;">
		 		<input type="number" name="Room_ID" class="inputBox"/>
		 	</td>
		 	<td style="text-align: center;">办案民警</td>
		 	<td style="text-align: center;">
		 		<input type="text" name="" value="${users.real_Name}" class="inputBox"/>
		 	</td>
		 </tr>
		 <tr>
		   <td  colspan="2" style="text-align: center;">进入办案区原由</td>
		   <td colspan="2"><input type="text" name="" value="${SuspectInfor.suspected_Cause }" class="inputBox" disabled="true" placeholder="投案自首   治安传唤"/></td>
		  </tr>
		</table>
		<input type="submit" class="btn" value="提交"/>
	</form>
</body>
</html>