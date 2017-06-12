<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
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

<style type="text/css">
.content {
	margin-top: 10px;
	float: left;
	font-size: 18px;
}
</style>
</head>

<body>
<div id="wrapper">
	<div id="top"></div>
		<div id="joinus">
			<div style="text-align: center; font-size: 22px;color: #C00000;padding: 10px 0px 10px 0px;">加入我们</div>
				<span style="text-align: center;font-size: 22px;color: #C00000;padding: 10px 0px 0px 10px;">加入我们的小组成员要求应能吃苦耐劳，能服从团队项目安排，能积极利用课余时间努力提升自身能力</span>
					<c:forEach items="${joinus}" var="joinus">
					<div style="font-size: 22px; color: #C00000;padding-top:20px ;">${joinus.title }:</div>
						<ul><li>${joinus.content }</li></ul>
				</c:forEach>
		<div id="footer">
			<hr width="1000px" style="color: #444444;" />
			<p>西华大学&copy;2013&mdash;2015 All Rights Reserved</p>
		</div>
	</div>
	</div>
</body>
<script type="text/javascript" id="topScript"
	src="<%=basePath%>js/top_bar.js" data="base=<%=basePath%>"></script>
</html>