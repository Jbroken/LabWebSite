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
<link rel="stylesheet" href="<%=basePath%>css/picture.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.innerfade.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.pngFix.js"></script>
<script type="text/javascript"
	src="<%=basePath%>js/jquery.smartmenu.min.js"></script>

<style type="text/css">
<!--
.STYLE1 {
	color: #000000
}

.STYLE2 {
	color: #770000;
	font-weight: bold;
}

-->
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
	<div id="help">
		<div style="text-align: center; font-size: 22px;color: #C00000;padding: 10px 0px 10px 0px;">勤工助学</div>
			<c:forEach  items ="${help}" var="help">
				<div style="font-size: 22px; color: #C00000;padding-top:20px ;">${help.title }:</div>
				<ul><li style="font-size: 18px;margin-top: 20px">${help.content }</li></ul>
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