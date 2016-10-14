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
</head>
<body>
	<form action="${pageContext.request.contextPath }/personalCheck_addCheckPersonInfor.action" method="post">
		<table  class="" cellspacing="0" cellpadding="0" bordercolor="#cbcbcb" border="1px">
		  	
		   <div class="title">
		    人身检查记录
		  </div>
		   <tr>
		    <td width="15%" rowspan="4"><div class="bigtouxiang"><img src="${pageContext.request.contextPath }/images/ercun.png"></div></td>
		    <td width="10%" rowspan="4"><div class="touxiang"><img src="${pageContext.request.contextPath }/images/yicun.png"></div></td>
		    <td width="8%">姓名</td>
		    <td width="20%"><input type="text" name="" value="${SuspectInfor.suspect_Name }" class="inputBox" ></input></td>    
		  </tr>
		  <tr>
		  	<td width="10%" >性别</td>
		    <td width="1%"><input type="text" name="" value="${SuspectInfor.sex}" class="inputBox" ></input></td>
		  </tr>
		  <tr>
		  	<td width="10%" >档案编号</td>
		    <td width="1%"><input type="text" name="" class="inputBox" ></input></td>
		  </tr>
		  <tr>
		  	<td width="10%">身份证号</td>
		    <td width="1%"><input type="text" name="" value="${SuspectInfor.identifyCard_Number }" class="inputBox" ></input></td>
		  </tr>
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
		    <td><input type="text" name="" value="${roomId }" class="inputBox" /></td>
		    <td>进入办案区的原由</td>
		  	<td ><input type="text" name="" value="${SuspectInfor.suspected_Cause }" class="inputBox" disabled="true" placeholder="投案自首   治安传唤"/></td>
		  </tr>
		  <tr>
		    <td >检查民警签字</td>
		    <td colspan="3"><input type="text" name="" value="${users.real_Name}" class="inputBox" /></td>    	
		  </tr>	 
		</table>
		<input type="submit" class="btn" value="提交"/>
	</form>
</body>
</html>