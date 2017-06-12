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
<title>研究生招生</title>
<link rel="stylesheet" href="<%=basePath%>css/index.css" />
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
.box {
	width: 1000px;
	folat: left;
}

.title {
	font-size: 22px;
	color: #C00000;
	padding-top: 20px;
	float: left;
}

.content {
	margin-top: 10px;
	float: left;
	font-size: 18px;
}

.zhaosheng {
	text-align: center;
	font-size: 22px;
	color: #C00000;
	font-weight: bold;
	padding: 10px 0px 10px 0px;
}
</style>
</head>

<body>
	<div id="wrapper">

		<div id="top"></div>
		<div id="joinus">
			<div class="zhaosheng">研究生招生</div>
			<!-- 循环开始 -->
			<c:forEach items="${graduate}" var="graduate">
				<div class="box">
					<table>
						<tr>
							<td>
								<div class="title">${graduate.title }</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="content">
									<ul>
										<li>${graduate.content}</li>
									</ul>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</c:forEach>

			<span style="font-size: 18px;"><span
				style="color: #C00000;padding-top: 10px;">特别说明:</span>团队热烈欢迎跨专业同学，尤其需要本科为数学相关专业的研究生。</span>
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