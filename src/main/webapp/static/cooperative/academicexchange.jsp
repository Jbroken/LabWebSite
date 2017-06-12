<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.io.*"%>
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
<title>合作交流</title>
<link rel="stylesheet" href="<%=basePath%>css/index.css" />
<link rel="stylesheet" href="<%=basePath%>css/picture.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.innerfade.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.pngFix.js"></script>
<script type="text/javascript"
	src="<%=basePath%>js/jquery.smartmenu.min.js"></script>

<style type="text/css">
<!--
.STYLE4 {
	font-family: "å¾®è½¯éé»";
	color: #00BB00;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<div id="wrapper">
	<div id="top"></div>
	<div id="team">
		<span
			style="font-weight: bold; font-size: 22px;color: #800000;margin-top: 10px;">学术交流</span>
		<table style="width: 1000px; ">
		<c:forEach items="${academic}"var="academic">
			<tr style="height: 150px;">
				<td>
					<ul>
						<li>
							${academic.content}
						</li>
					</ul>
				</td>
			</tr>
			</c:forEach>
		</table>
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