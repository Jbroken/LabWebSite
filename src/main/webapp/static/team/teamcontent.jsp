<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.io.*"   %>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
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
		.title{text-align: center;font-size: 30px;font-weight: bold;}
		.pic{margin-left: auto;margin-right: auto;width: 400px;height: 300px;}
		.pic img {width: 400px;height: 300px;}
		.text{font-size: 20px;width: 1000px;margin-left: auto;margin-right: auto;font-family: 微软雅黑}
		pre{
           white-space:pre-wrap;
           white-space:-moz-pre-wrap;
           white-space:-pre-wrap;
           white-space:-o-pre-wrap;
           word-wrap:break-word;
           
          }
         .head
         {
         	width: 1000px;
         	height:400px;
         }
         .main
         {
         	width: 1000px;
         }
         .picture{text-align: center;}
         #footer1{width: 1000px;margin-left: auto;margin-right: auto;margin-bottom: 100px;margin-top: 50px}
         #footer1 p{text-align: center;}
	</style>

  </head>
  
  <body>
  
	  <div class="top">
	  	 
	  </div>
  
  
    <div class="main">
 	<h1 class="title">${member.name}</h1><br>
 	<div class="picture">
 		 <img src="${url}" alt="用户头像">   
 	</div>
 	               
    <pre>${member.content}</pre>
   
     <div id="footer">
				    <hr width="1000px" style="color: #444444;" />
					<p>西华大学&copy;2013&mdash;2015 All Rights Reserved</p>
			</div>
 	</div>
      		
  </body>
  <script type="text/javascript" id="topScript" src="<%=basePath%>js/top_bar.js" data="base=<%=basePath%>"></script>
</html>
