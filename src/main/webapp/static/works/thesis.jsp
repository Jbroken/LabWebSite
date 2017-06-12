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
		<script type="text/javascript" src="<%=basePath%>js/jquery.smartmenu.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/common.js"></script>
		 
		<style type="text/css">
			<!--
			.STYLE1 {color: #000000}
			.STYLE2 {
				color: #770000;
				font-weight: bold;
			}
			-->
		</style>
	</head>

	<body>
	<div id="wrapper">
		 <div id="top"></div>
			<div class="wrap">
				<div class="thesis ">
					<img src="<%=basePath%>img/biaoti-2.png">
					<c:forEach items="${thesis}" var="thesis">
					<ul>
					<li>${thesis.content}</li>
					</ul>
					</c:forEach>
					<div id="footer">
					<hr style="color: #444444" ;width="1000px" ; />
					<p>西华大学&copy;2013&mdash;2015 All Rights Reserved.</p>
				</div>
				</div>
			</div>
			</div>
	</body>
	<script type="text/javascript" id="topScript" src="<%=basePath%>js/top_bar.js" data="base=<%=basePath%>"></script>
</html>