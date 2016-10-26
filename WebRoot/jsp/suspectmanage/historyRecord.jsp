<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title></title>
	<style type="text/css">
	.title{margin-top:2%;margin-bottom: 2%;text-align: center;font-weight: bold;font-size: 24px;}
	.search{margin-left: 28%;margin-top: 15px;}
    .ipt{ width:58%; height: 36px;line-height: 36px; background: none;font: 16px arial;border: 1px solid #b8b8b8;
	border-bottom: 1px solid #ccc;border-right: none; vertical-align: top; outline: none;box-shadow: none;padding-left: 15px;position: relative;}
    .sbtn{cursor: pointer; width: 102px;height: 40px;line-height: 40px;background-color: #38f; font: 16px arial;color: white;
 box-shadow: none; font-weight: normal;margin: 0px;border: 1px solid #38f;border-bottom: 1px solid #2e7ae5; background-color: #38f;position: absolute;right: 24.3%;}
   .wait,.history{border: solid 1px #cbcbcb;width:480px; height: auto; float: left; padding-bottom: 1%; }
   .wait{margin:2% 2% 2% 6%;}
   /*.history{margin: 2%;}*/
   .history{margin: auto;margin-top: 2%;margin-left: inherit;}
   .info_head {padding-left: 1%;font-size: 20px; margin-bottom: 2%;background: #F0F5F7;
    color: #056dae;
    text-align: left;
}

.info_pic li{
	width: 110px;
    height: 140px;
    padding: 12px 9px 0 9px;
    overflow: hidden;
    border: 1px solid #E0E0E0;
    float: left;
    background: #fff;
    margin:6px;
    text-align: center;
    list-style: none;
}
.info_pic img {border: 1px solid red; }
.info_pic li span {display: block;font-size: 16px;line-height: 22px;text-align: center;}
.clear{clear: both;}
</style>
</head>
<body>
<div class="title">嫌疑人信息管理表</div>

	<div class="search">
		<form action="<%-- ${pageContext.request.contextPath }/suspectManage_searchsuspectInfor.action --%>" method="post">
	        <input type="text" class="ipt" name="ss" maxlength="100" autocomplete="off">
	        <input type="submit" value="搜索" class="sbtn">
        </form>
    </div> 
	<div class="wait">
		<div class="info_head">待办</div>
		<ul class="info_pic">
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="${pageContext.request.contextPath }/jsp/recordInformation/allInformation.jsp">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
		</ul>
	</div>
	<div class="history">
		<div class="info_head">历史</div>
		<ul class="info_pic">
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
			<li>
				<img src="" width="80px" height="106px">
				<span><a href="#">姓名</a></span>
			</li>
		</ul>
	</div>
</body>
</html>