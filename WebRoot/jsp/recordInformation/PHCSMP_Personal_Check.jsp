<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title></title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/progress-bar.css" type="text/css">
	
	<style type="text/css">
		*{margin:0;padding:0;}
		form{margin: 2% 15%;}
		table{width: 100%;}
		table td{font-size: 12x;line-height:50px; height:50px; text-align: center;}
		.title{margin-bottom: 2%;text-align: center;font-weight: bold;font-size: 24px;}
		.bigtouxiang{width: 140px; height: 211px;border: 1px solid red; margin: 2% auto ;}
		.touxiang{width: 70px; height: 106px;border: 1px solid red; margin: 0 auto;}
		/*input{border:0;background:transparent;outline: medium;text-indent: 5px;}*/
		input{border:0;background:seashell;outline: medium;text-indent: 5px;width: initial;}
		.inputBox{border:0;background:seashell;outline: medium;text-indent: 5px;height: 45px;width: initial;}
		.span1{padding: 5px;margin-top: 1%;margin-bottom: 1%; display: block;margin-left: 2%;}
		.checkbox{padding: 5px;}
		.checkbox input{display: inline-block; margin-left: 2%;}
		.btn{background-color: #1fbba6; width:122px;height: 37px;float: right;text-align: center;font-size: 16px;margin:2%;line-height: 37px;border-radius: 5px;color: #FFF;}
	</style>
	
	<script type="text/javascript">
		var count = 0;
		var myArr = new Array();
		//初始化数组myArr
		for(var i=0;i<8;i++){
			myArr[i] = 0;
		}
		
        function onMouseOut() {
        	var isChange = false;
            var selfReports = document.getElementById("Self_ReportS").value;
            var checkReports = document.getElementById("Check_ReportS").value;
            var suspect_Name = document.getElementById("suspect_Name").value;
            
            var sex = document.getElementById("sex").value;
            var Suspect_ID = document.getElementById("Suspect_ID").value;
            var identifyCard_Number = document.getElementById("identifyCard_Number").value;
            
            var check_Situation = document.getElementById("Check_Situation").value;
			
           /*  if(selfReports != " "&&myArr[0] == 0){
            	console.log("selfReports:"+selfReports);
                count = count+1;
                myArr[0]=1;
                isChange = true;
            } */
            if(checkReports != ""&&myArr[1] == 0){
            	console.log("checkReports:"+checkReports);
                count = count+1;
                myArr[1]=1;
                isChange = true;
            }
            
            if(suspect_Name != ""&&myArr[2] == 0){
            	console.log("suspect_Name:"+suspect_Name);
                count = count+1;
                myArr[2]=1;
                isChange = true;
            }
            
            if(sex != ""&&myArr[3] == 0){
            console.log("sex:"+sex);
                count = count+1;
                myArr[3]=1;
                isChange = true;
            }
            
             if(Suspect_ID != ""&&myArr[4] == 0){
              	console.log("Suspect_ID:"+Suspect_ID);
                count = count+1;
                myArr[4]=1;
                isChange = true;
            }
            
             if(identifyCard_Number != ""&&myArr[5] == 0){
             console.log("identifyCard_Number:"+identifyCard_Number);
                count = count+1;
                myArr[5]=1;
                isChange = true;
            }
            
            /* if(check_Situation != ""&&myArr[6] == 0){
            console.log("check_Situation:"+check_Situation);
                count = count+1;
                myArr[6]=1;
                isChange = true;
            } */
             
            //ischange为true
            if(isChange){
            	jindutiao(count*10);
            }
        }
	
		function jindutiao(coun) {
            var oSpan = document.getElementsByClassName("spanText")[0];
            var oP = document.getElementById("numPoint");
            var num=0;
            var time = 0;
            var timer = null;
            timer = setInterval(function(){
                if(num < coun){
                    oSpan.style.width = oSpan.offsetWidth + 4 + 'px';
                    num = num + 1;
                    oP.innerHTML = num + '%';
                }else{
                    clearInterval(timer);
                }
            },time);
        }
	</script>
	
</head>
<body>
	<form action="${pageContext.request.contextPath }/personalCheck_addCheckPersonInfor.action" method="post">
	 	<div class="title">人身检查记录</div>
	 
		<table  class="" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		   <tr>
		    <td width="15%" rowspan="4"><div class="bigtouxiang"><img src="${pageContext.request.contextPath }/images/ercun.png"></div></td>
		    <td width="10%" rowspan="4"><div class="touxiang"><img src="${pageContext.request.contextPath }/images/yicun.png"></div></td>
		    <td width="8%">姓名</td>
		    <td width="20%"><input type="text" name="suspect_Name" id="suspect_Name"  value="${SuspectInfor.suspect_Name }" onblur="onMouseOut()" class="inputBox" ></input></td>    
		  </tr>
		  <tr>
		  	<td width="10%" >性别</td>
		    <td width="1%"><input type="text" name="sex" id="sex" value="${SuspectInfor.sex}" onblur="onMouseOut()" class="inputBox" ></input></td>
		  </tr>
		  <tr>
		  	<td width="10%" >档案编号</td>
		    <td width="1%"><input type="text" name="Suspect_ID" id="Suspect_ID" value="${SuspectInfor.Suspect_ID}" onblur="onMouseOut()" class="inputBox" ></input></td>
		  </tr>
		  <tr>
		  	<td width="10%">身份证号</td>
		    <td width="1%"><input type="text" id="identifyCard_Number" name="identifyCard_Number" value="${SuspectInfor.identifyCard_Number }" onblur="onMouseOut()" class="inputBox" ></input></td>
		  </tr>
		  	<td colspan="4" style="line-height: 25px;">
		    	<span class="span1">自述症状：(既往病史、是否饮酒、是否患有传染性疾病)</span>
				<textarea name="Self_ReportS" id="Self_ReportS" cols="100%" rows="8%" onblur="onMouseOut()" style="border: 1 solid #888888;LINE-HEIGHT:18px;padding: 3px;"></textarea>
		    </td>
		  </tr>
		  <tr>
		  	<td colspan="4" style="line-height: 15px;">
		  		<span class="span1">检查情况概述：<input type="text" id="Check_ReportS" name="Check_ReportS" onblur="onMouseOut()" style="width:45%;border-bottom: solid 1px #000;"/></span>
		  	</td>
		  </tr>
		  <tr>
		  	<td colspan="4" style="line-height: 25px;">
		  		<span class="span1">人身检查状态：</span>
				<div class="checkbox">
			    	<input type="checkbox" id="Check_Situation" checked="" name="Check_Situation" onblur="onMouseOut()" value="体表有伤痕"> 体表有伤痕
		    		<input type="checkbox" id="Check_Situation" name="Check_Situation" onblur="onMouseOut()" value="有饮酒"> 有饮酒
		    		<input type="checkbox" id="Check_Situation" name="Check_Situation" onblur="onMouseOut()" value="有拍照"> 有拍照<br/>
		    	</div>
		    </td>
		  </tr>
		  <tr>
		  	<td>房间号</td>
		    <td><input type="text" name="Room_ID" value="" class="inputBox" /></td>
		    <td>进入办案区的原由</td>
		  	<td ><input type="text" id="suspected_Cause" name="suspected_Cause" value="${SuspectInfor.suspected_Cause }" onblur="onMouseOut()" class="inputBox" disabled="true" placeholder="投案自首   治安传唤"/></td>
		  </tr>
		  <tr>
		    <td >检查民警</td>
		    <td colspan="3"><input type="text" name="" value="${users.real_Name}" class="inputBox" /></td>    	
		  </tr>	 
		</table>
		<div id='big' >
		    <div id='div1'><span class="spanText" id="span-bar"></span></div>
		    <p id='text'>已完成</p>
		    <p id='numPoint'>0%</p>
		</div>
		<input type="submit" class="btn" value="提交"/>
	</form>
</body>
</html>