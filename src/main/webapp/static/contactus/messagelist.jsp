<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>留言板</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td
	{
	margin: 0;
	padding: 0;
	list-style: none;
	font: 15px/1.5 "Arial", "sans-serif", "微软雅黑", "宋体", "Tahoma"
}

.demo03 {
	width: 800px;
	padding: 20px;
	position: relative;
	border: 1px solid #CCC;
	margin-left: 200px;
	background-color: rgba(94, 161, 177, 0.5)
}

.demo03  h6 {
	margin-bottom: 5px
}

.demo03 .dialog p {
	text-indent: 2em;
	line-height: 20px;
	width: 600px
}

.demo03 .userPic {
	float: left;
	margin: -20px 0 0 -100px
}

.demo03 .pubTime {
	position: absolute;
	top: 10px;
	right: 20px;
	color
	(94,161,177);
}

.bar {
	width: 400px;
	height: 40px;
	background-color: rgba(94, 161, 177, 0.5);
	text-align: center;
	padding-top: 10px;
	margin-left: 600px;
	position: fixed;
	bottom: 30px;
	_position: absolute;
	_margin-top: expression(this.style.pixelHeight + document.documentElement.scrollTop);
}

.bar a {
	color: black;
	text-decoration: none;
	font-size: 20px;
}

a:HOVER {
	background-color: rgba(150, 255, 200, 0.5);
}

body {
	background-image: url("img/header-bg.jpg");
}
}
</style>
</head>

<body>
	<%
	int Page = Integer.parseInt(request.getAttribute("page").toString());
    int pageMax = Integer.parseInt(request.getAttribute("pageMax").toString());
	%>
	<div class="m">
		<!-- 循环开始 -->
		<c:forEach items="${map}" var="message">
			<div class="demo03">

				<img class="userPic" src="img/head01.jpg" width="50" height="50" />
				<h5>${message.key.author}</h5>
				<p>${message.key.content}</p>
				<span class="pubTime"> ${ message.value }前发布</span>

			</div>


			<br />
			<br />
		</c:forEach>
		<!-- 循环结束 -->


		<div class="bar">
		<a href="view/messageList?page=<%=(Page-1)==0?1:Page-1%>"  class="up" > 上一页</a>
		<a href="view/messageList?page=<%=((Page+1)>pageMax)?pageMax:Page+1%>"  class="down">下一页</a>
		<a href="view/messageList?page=1"  class="first">去首页</a>
		<a href="view/messageList?page=<%= pageMax%>"  class="end">去尾页</a>		
	</div>
	</div>
</body>
</html>
