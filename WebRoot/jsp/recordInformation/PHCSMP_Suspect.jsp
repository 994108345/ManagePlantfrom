<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title></title>
	<style type="text/css">
		*{margin:0;padding:0;}
		form{margin: 2% 15% ;}
		table{width: 100%;}
		table td{font-size: 12x;line-height: 50px;height:50px;text-align: center;} 
		.label1{float: left;padding: 5px; }
		.label2{float: right;padding: 5px;margin-right: 1%;}
		.title{margin-bottom: 2%;text-align: center;font-weight: bold;font-size: 24px;}
   		.bigtouxiang{width: 140px; height: 211px;border: 1px solid red; margin: 2% auto;}
   		.span3{margin: 2% auto;}
		.touxiang{width: 70px; height: 106px;border: 1px solid red; margin: 0 auto;}
		input{border:0;background:seashell;outline: medium;text-indent: 5px;width: initial;}
		.inputBox{border:0;background:seashell;outline: medium;text-indent: 5px;height: 45px;width: initial;}
		.span1{padding: 5px;margin-top: 1%;margin-bottom: 1%; display: block;}
		.span2{padding: 5px;margin-top: 1%; display: block;}
		.checkbox{padding: 5px;}
		.checkbox input{display: inline-block; margin-left: 3%;}
		.btn{background-color: #1fbba6; width:122px;height: 37px;float: right;text-align: center;font-size: 16px;margin:2%;line-height: 37px;border-radius: 5px;color: #FFF;}
	</style> 
	<script src="${pageContext.request.contextPath }/js/laydate/laydate.js"></script> 
	<script src="${pageContext.request.contextPath }/js/laydate/change_color.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/progress-bar.css" type="text/css">
	<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
	<script type="text/javascript">
		var count = 0;
		var myArr = new Array();
		
		for(var i=0;i<8;i++){
			myArr[i] = 0;//初始化数组
		}
		
        function onMouseOut() {
        	var isChange = false;
            var name = document.getElementById("Suspect_Name").value;
            var sex = document.getElementById("Sex").value;
            var birthday = document.getElementById("Birthday").value;
            var bandID = document.getElementById("band_ID").value;
			var suspectID = document.getElementById("Suspect_ID").value;
			var typeID = document.getElementById("Type_ID").value;
			var identifyCardNumber = document.getElementById("IdentifyCard_Number").value;
			var suspectedCause = document.getElementById("Suspected_Cause").value;
			var staffID = document.getElementById("Staff_ID").value;
			var enterTime = document.getElementById("Enter_Time").value;
			
            if(name != ""&&myArr[0] == 0){
                count = count+1;
                myArr[0]=1;
                isChange = true;
            }
            if(sex != ""&&myArr[1] == 0){
                count = count+1;
                myArr[1]=1;
                isChange = true;
                //console.log("性别："+sex);
            }
            if(birthday != ""&&myArr[2] == 0){
                count = count+1;
                myArr[2]=1;
                isChange = true;
                //console.log("出生日期："+birthday);
            }
             if(bandID != "请选择"&&myArr[3] == 0){
                count = count+1;
                myArr[3]=1;
                isChange = true;
                //console.log("bandID："+bandID);
            }
            if(suspectID != ""&&myArr[4] == 0){
                count = count+1;
                myArr[4]=1;
                isChange = true;
            }
            if(identifyCardNumber != ""&&myArr[5] == 0){
                count = count+1;
                myArr[5]=1;
                isChange = true;
            } 
             if(typeID != ""&&myArr[6] == 0){
                count = count+1;
                myArr[6]=1;
                isChange = true;
            } 
             if(suspectedCause != ""&&myArr[7] == 0){
                count = count+1;
                myArr[7]=1;
                isChange = true;
            }
            if(enterTime != ""&&myArr[8] == 0){
                count = count+1;
                myArr[8]=1;
                isChange = true;
            } 
            
            if(isChange){
            	jindutiao(count*4);
            }
        }
	 var i = 0;
		function jindutiao(coun) {
            var oSpan = document.getElementsByClassName("spanText")[0];
            var oP = document.getElementById("numPoint");
            var num=0;
            var time = 0;
            var timer = null;
            console.log("进度条："+coun);
            
            timer = setInterval(function(){
                if(num < coun&&coun<=38){
                    oSpan.style.width = oSpan.offsetWidth + 5 + 'px';
                    num = num + 1;
                    oP.innerHTML = num + '%';
                }else{
                	num = 0;//清除
                    clearInterval(timer);
                }
            },time);
        } 
	</script>
</head>
<body>
<!-- 包含页面 -->
	<c:if test="${users.real_Name }==null">
		<c:import url="../home/top.jsp"></c:import> 	
		<br><br>
		<br><br>
	</c:if>
	 <div class="title">进入办案区人员基本情况</div>
	<form action="${pageContext.request.contextPath }/suspect_addSuspectInfor.action" method="post">
	<table  class="" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		  <tr >
		    <td width="15%" rowspan="4" height="10"><div class="bigtouxiang"><img src="${pageContext.request.contextPath }/images/ercun.png"></div></td>
		    <td width="2%" rowspan="4" height="10"><div class="touxiang"><img src="${pageContext.request.contextPath }/images/yicun.png"></div></td>
		    <td width="8%" height="10">姓名</td>
		    <td width="20%" height="10"><input type="text" name="Suspect_Name" id="Suspect_Name" class="inputBox" onblur="onMouseOut()" /></td>    
		  </tr>
		  <tr>
		  	<td width="10%" height="10">性别</td>
		    <td width="1%"><input type="text" name="Sex" id="Sex" onblur="onMouseOut()" class="inputBox" /></td>
		  </tr>
		  <tr>
		  	<td width="10%" height="10">档案编号</td>
		    <td width="1%"><input type="text" class="inputBox" name="Suspect_ID" id="Suspect_ID" onblur="onMouseOut()" /></td>
		  </tr>
		  <tr>
		  	<td width="10%" height="10">身份证号</td>
		    <td width="1%"><input type="text" class="inputBox" name="IdentifyCard_Number" id="IdentifyCard_Number" onblur="onMouseOut()" ></input></td>
		  </tr>
		  <tr>
		  	<td>民族</td>
		    <td><input type="text" name="" class="inputBox"></input></td>
		    <td>出生日期</td>
		    <td><input type="date" name="Birthday" id="Birthday" class="inputBox" onblur="onMouseOut()" /></td>
		  </tr>
		  <tr>
		    <td height="29">身份证件类型</td>
		    <td><input type="text" name="Type_ID" id="Type_ID" class="inputBox" onblur="onMouseOut()" /></td>
		    <td height="29">手环ID</td>
		    <td>
		    	<select name="band_ID" id="band_ID" >
					<option value="0">-----请选择-----</option>
					<c:forEach items="${bundList}" var="item" varStatus="status">
						<option value="${item.band_ID }">${item.band_ID }</option>
					</c:forEach>   
				</select>
		    </td>
		  </tr>
		  
		  <tr>
		    <td height="170">进入办案区原由</td>
		    <td colspan="7" style="line-height: 25px;">
		    	<span class="span1">案由：<input type="text" name="Suspected_Cause" id="Suspected_Cause" onblur="onMouseOut()" class="inputBox" style="width:50%;border-bottom: solid 1px #000;"/></span>
		    	<div class="checkbox">
		    		<input type="checkbox" name="Suspected_Cause" value="投案自首"> 投案自首
		    		<input type="checkbox" name="Suspected_Cause" value="治安传唤"> 治安传唤
		    		<input type="checkbox" name="Suspected_Cause" value="形式传唤"> 形式传唤
		    		<input type="checkbox" name="Suspected_Cause" value="拘传"> 拘传     <br/>
		    		<input type="checkbox" name="Suspected_Cause" value="刑事拘留"> 刑事拘留
		    		<input type="checkbox" name="Suspected_Cause" value="取保候审"> 取保候审
		    		<input type="checkbox" name="Suspected_Cause" value="监视居住"> 监视居住
		    		<input type="checkbox" name="Suspected_Cause" value="逮捕"> 逮捕	  <br/>
		    		<input type="checkbox" name="Suspected_Cause" value="被害人"> 被害人&nbsp
		    		<input type="checkbox" name="Suspected_Cause" value="证人"> 证人
		    		<input type="checkbox" name="Suspected_Cause" value="辨认陪衬人员"> 辨认陪衬人员
		    	</div>
		    	<span class="span2">办案民警 <input type="number" name="" id="Staff_ID" onblur="onMouseOut()" disabled="disabled" value="${users.real_Name }" style="width:45%;border-bottom: solid 1px #000;"></input></span>
	    	</td>
		  </tr>
		  <tr>
		    <td>进入办案区时间</td>
		    <td colspan="3">
		    	<input name="Enter_Time" id="Enter_Time" onblur="onMouseOut()" placeholder="请输入年月日时分" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
	    	</td>
	    </tr>
	    <tr>
		    <td>管理员</td>
		    <td colspan="3"><input type="text" name="" value="${users.real_Name }" class="inputBox" ></input></td>
		  </tr>
		</table>
		<div id='big'>
		    <div id='div1'><span class="spanText" id="span-bar"></span></div>
		    <p id='text'>已完成</p>
		    <p id='numPoint'>0%</p>
		</div>
		<input class="btn" type="submit" value="提交"/>
	</form>
</body>
</html>