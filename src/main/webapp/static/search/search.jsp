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
    
    <title>My JSP 'search.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style type="text/css">
		*{
			margin: 0;
			padding: 0;
		}
		#size
		{
			width:200px;
			margin:0 auto;
			font-size: 12px;
			color:rgb(126,126,126);
		}
		#cont
		{
			width: 700px;
			color:rgb(126,126,126);
			
		}
		#search
		{
			width:1000px;
			margin-left: auto;
			margin-right: auto;
			text-align: center;
		}
		#main
		{
			margin-left: 300px;
		}
	</style>

  </head>
  
  <body> 
  <div id="search">
 	 <form action="search/doSearch" method="get">
     	<input type="text"  value="${word}" name="word" style="width:300px;height:25px"/>
     	<input type="submit" value="搜索" style="width: 50px"/> 
 	 </form>  
  </div> 
  
	  <p id="size">共${size}条记录</p>
	  <br/>
	<div id="main">
	  <!-- 开始循环 -->
	  <c:forEach items="${list}" var="member">
	     	<a href="#" style="height: 50px">${member.name}</a>
	     	<p id="cont"> ${member.content}</p>
	     	<hr style="width: 700px">
	     	<br>
	  </c:forEach>
	  
	  <!-- 结束循环 -->
	</div>
  </body>
</html>
