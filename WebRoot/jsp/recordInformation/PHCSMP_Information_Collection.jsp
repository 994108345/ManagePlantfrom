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
var count = 0;
		var myArr = new Array();
		//初始化数组myArr
		for(var i=0;i<5;i++){
			myArr[i] = 0;
		}
		
        function onMouseOut() {
        	var isChange = false;
            var collectedItem = document.getElementById("Collected_Item").value;
            var Is_Checked = document.getElementById("Is_Checked").value;
			var Is_Collected = document.getElementById("Is_Collected").value;
			var Is_Storaged = document.getElementById("Is_Storaged").value;
			var Room_ID = document.getElementById("Room_ID").value;
			
           if(collectedItem != "-----请选择-----"&&myArr[0] == 0){
            console.log(collectedItem);
                count = count+1;
                myArr[0]=1;
                isChange = true;
            } 
           
           if(Is_Checked != ""&&myArr[1] == 0){
            console.log("Is_Checked:"+Is_Checked);
                count = count+1;
                myArr[1]=1;
                isChange = true;
            }
            if(Is_Collected != ""&&myArr[2] == 0){
            console.log("Is_Collected"+Is_Collected);
                count = count+1;
                myArr[1]=1;
                isChange = true;
            }
            if(Is_Storaged != ""&&myArr[3] == 0){
            console.log("Is_Storaged"+Is_Storaged);
                count = count+1;
                myArr[1]=1;
                isChange = true;
            }
            /* if(Room_ID != ""&&myArr[4] == 0){
            console.log(Room_ID);
                count = count+1;
                myArr[1]=1;
                isChange = true;
            } */
            //ischange为true
            if(isChange){
            	jindutiao(count*3);
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
                  oSpan.style.width = oSpan.offsetWidth + 6 + 'px';
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
  <!-- 包含页面 -->
   <c:if test="${users.real_Name==null }">
		<c:import url="../home/top.jsp"></c:import> 	
		<br><br>
		<br><br>
	</c:if>  
	<div class="title">信息采集记录</div>
	<form action="${pageContext.request.contextPath }/IC_addInformationCollection.action" method="post">
		<table  class="" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
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
		    <td width="10%" style="text-align: center;">是否对比检查</td>
		    <td width="10%" style="text-align: center;">
		    	<input type="radio" name="Is_Checked" id="Is_Checked" onblur="onMouseOut()" value="是"  />是
		    	<input type="radio" name="Is_Checked" id="Is_Checked" onblur="onMouseOut()" value="否"/>否
		    </td>
		    <td width="10%" style="text-align: center;">是否采集项目</td>
		    <td width="10%" style="text-align: center;">
		    	<input type="radio" name="Is_Collected" id="Is_Collected" onblur="onMouseOut()" value="是"  />是
		    	<input type="radio" name="Is_Collected" id="Is_Collected" onblur="onMouseOut()" value="否"/>否
		    </td>
		    
		  </tr>
		  <tr>
		    <td width="10%" style="text-align: center;">信息是否入库</td>
		    <td width="10%" style="text-align: center;">
		    	<input type="radio" name="Is_Storaged" id="Is_Storaged" onblur="onMouseOut()" value="是 "  />是 
		    	<input type="radio" name="Is_Storaged" id="Is_Storaged" onblur="onMouseOut()" value="否"/>否
		    </td>
		    <td  style="text-align: center;">采集项目</td>
		    <td  >
		    	<select name="Collected_Item" id="Collected_Item" onblur="onMouseOut()" style="margin-left:38%;vertical-align:middle;">
					<option value="-----请选择-----">-----请选择-----</option>
					<option value="身份信息">身份信息</option>
					<option value="指纹">指纹</option>
					<option value="血液">血液</option>
				</select>	
		    </td>
		 </tr>
		 <tr>
		 	<td style="text-align: center;">房间号</td>
		 	<td style="text-align: center;">
		 		<input type="" name="Room_ID" id="Room_ID" onblur="onMouseOut()" value="3" class="inputBox"/>
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
		<div id='big' >
		    <div id='div1'><span class="spanText" id="span-bar"></span></div>
		    <p id='text'>已完成</p>
		    <p id='numPoint'>0%</p>
		</div>
		<input type="submit" class="btn" value="提交"/>
	</form>
</body>
</html>