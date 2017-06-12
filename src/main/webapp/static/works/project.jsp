<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>西华大学无线网络与通信团队</title>
<link rel="stylesheet" href="<%=basePath%>css/index.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.innerfade.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.pngFix.js"></script>
<script type="text/javascript"
	src="<%=basePath%>js/jquery.smartmenu.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/common.js"></script>


</head>

<body>
<div id="wrapper">
	<div id="top"></div>


	<!-- <div class="wrap"> -->
		<div class="project ">
			<img src="<%=basePath%>img/xiangmu-1.png" />
			<div>在研的主要纵向科研项目</div>
			<c:forEach items="${projectNP}" var="p1">
				<ul><li>${p1.content}</li></ul>
			</c:forEach>
			<div>在研的主要横向科研项目</div>
			<c:forEach items="${projectNT }" var="p2">
				<ul>
					<li>${p2.content}</li>
				</ul>			
			</c:forEach>
					<div class="project ">
						<img src="<%=basePath%>img/xiangmu-2.png" />
						<c:forEach items="${projectO }" var="p3">
							<ul>
							<li>${p3.content}</li>
							</ul>
						</c:forEach>
			<div id="footer">
				<hr width="1000px" style="color: #444444;" />
				<p>西华大学&copy;2013&mdash;2015 All Rights Reserved</p>
			</div>
		</div>
	</div>
	</div>
</body>
<script type="text/javascript" id="topScript"
	src="<%=basePath%>js/top_bar.js" data="base=<%=basePath%>"></script>
</html>