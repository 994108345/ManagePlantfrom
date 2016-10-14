<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath }/js/jquery.js"></script>

</head>
<body style="background:url(${pageContext.request.contextPath }/images/topbg.gif) repeat-x;">

    <div style="float: left;width: 10%;height: 100%;text-align: center;">
            <img style="max-width: 50%;margin-top: 5%;max-height: 72%;margin-left: 30%;" src="${pageContext.request.contextPath }/images/police_03.png">
    </div>
    <div style="float: left;color: white;font-size: 28px;margin-top: 1.5%;">办案流程标准化智能管理平台</div>
        
            
    <div class="topright">    
    <ul>
    <li><span><img src="${pageContext.request.contextPath }/images/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="${pageContext.request.contextPath }/user_logout.action" target="_parent">安全退出</a></li>
    </ul>
    
    <div class="user">
    <span>${users.real_Name }</span><!-- 填入当前登录用户 -->
    <i>消息</i>
    <b>0</b>
    </div>    
    
    </div>
</body>
</html>