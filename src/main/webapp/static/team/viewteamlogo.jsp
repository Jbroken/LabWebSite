<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>西华大学无线网络与通信团队</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 	<link rel="stylesheet" href="<%=basePath%>css/index.css" />
	    <script type="text/javascript" src="<%=basePath%>js/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.innerfade.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.pngFix.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery.smartmenu.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/common.js"></script>
	<style type="text/css">
 
 
		#logo
		{
			width:150px;
			height:150px;
			float: left;
			margin-left: 50px;
			display: block;
			
		}
		.logowarp
		{
			width: 600px;
			height: 750px;
			margin-left: auto;
			margin-right: auto;
			
		}
		.h
		{
			width: 1000px;
			height: 500px;
		}
		.name
		{	
			margin-top: 10px;
			font-family: 微软雅黑;
			text-align: center;
		}
	</style>
  </head>
  
  <body>
  	<div id="top">
  		 
  	</div>
  	
  	
  	<div class="info">
	    <!-- 循环开始 -->
	    
	   	<div class="info">
	   		<ul class="logowarp">
			     <c:forEach items="${list}" var="t" >
				     <li id="logo">
					     <img alt="" src="${t.logo.url}" width="150px" height="150px">
					     	<p class="name"><a href="<%=basePath%>view/memberContent?id=${t.memberid}">${t.name}</a></p>
					     	
				     </li>
		     	 </c:forEach>
	     	</ul>
	   </div>
    </div>
  </body>
   <script type="text/javascript" id="topScript" src="<%=basePath%>js/top_bar.js" data="base=<%=basePath%>"></script>
</html>
