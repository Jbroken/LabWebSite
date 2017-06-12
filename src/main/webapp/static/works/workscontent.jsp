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
     
    
    <title>新闻内容</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
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
         .time{font-size: 12px;margin-right: 100px;width: 250px;color:rgb(136,136,136); }
         #footer1{width: 1000px;margin-left: auto;margin-right: auto;margin-bottom: 100px;margin-top: 50px}
         #footer1 p{text-align: center;}
	</style>

  </head>
  
  <body>
  
  <div class="head">
  <jsp:include page="../manage/head.jsp" />
  </div>
  
  
  <div class="main">
 	<h1 class="title">${work.title}</h1><br>
 	<div class="time">
 	<fmt:formatDate value="${work.date}" pattern="yyyy/MM/dd HH:mm:ss"/>
 	&nbsp;${work.author} 
 	</div>
 	                  
    ${work.content} 
   
     
 	</div>
      		<div id="footer1">
				<hr width="1000px" style="color: #444444;" />
					<p>西华大学&copy;2013&mdash;2015 All Rights Reserved</p>
			</div>
  </body>
</html>
