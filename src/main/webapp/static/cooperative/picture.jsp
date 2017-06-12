<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>合作与交流</title>
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
	font-size: 24px;
	font-weight: bold;
	color: #800000;
}

.STYLE2 {
	font-size: 18px;
	font-family: "å¾®è½¯éé»";
}

.STYLE3 {
	height: auto;
	text-align: center;
	width: 1000px;
}

-->
#content {
	width: 1000px;
	height: auto;
	margin-top: 20px;
	margin-left: auto;
	margin-right: auto;
	display: block;
	float: none;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

<body>
	<div id="wrapper">

		<div id="top"></div>
		<div id="content">
			<p id="jieshao">卿朝进老师出席武进技术转让会议</p>
			<div class="gallery cf">
				<div>
					<img src="<%=basePath%>img/img_1.jpg" />
				</div>
				<div>
					<img src="<%=basePath%>img/img_2.jpg" />
				</div>
				<div>
					<img src="<%=basePath%>img/img_3.jpg" />
				</div>
				<div>
					<img src="<%=basePath%>img/img_1.jpg" />
				</div>
				<div>
					<img src="<%=basePath%>img/img_2.jpg" />
				</div>
				<div>
					<img src="<%=basePath%>img/img_2.jpg" />
				</div>
			</div>
			<p id="jieshao">卿朝进老师出席武进技术转让会议</p>
			<div class="gallery cf">
				<div>
					<img src="<%=basePath%>img/img_5.jpg" />
				</div>
				<div>
					<img src="<%=basePath%>img/img_5.jpg" />
				</div>
				<div>
					<img src="<%=basePath%>img/img_6.jpg" />
				</div>
				<div>
					<img src="<%=basePath%>img/img_2.jpg" />
				</div>
				<div>
					<img src="<%=basePath%>img/img_5.jpg" />
				</div>
				<div>
					<img src="<%=basePath%>img/img_6.jpg" />
				</div>
				<div>
					<img src="<%=basePath%>img/img_3.jpg" />
				</div>
				<div>
					<img src="<%=basePath%>img/img_5.jpg" />
				</div>
			</div>
			<div>
				<script type="text/javascript" id="topScript"
					src="<%=basePath%>js/top_bar.js" data="base=<%=basePath%>"></script>
				<div id="footer">
					<hr width="1000px" style="color: #444444;" />
					<p>西华大学­¦&copy;2013&mdash;2015 All Rights Reserved</p>
				</div>
			</div>
		</div>
</body>

</html>